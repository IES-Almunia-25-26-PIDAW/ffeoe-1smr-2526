@echo off
setlocal enabledelayedexpansion

set IMAGE=ffeoe-1smr-2526
set IMAGE_MERMAID=ffeoe-1smr-2526-mermaid
set PDF=output/libro-actividades.pdf

if "%1"=="build"         goto build
if "%1"=="build-mermaid" goto build-mermaid
if "%1"=="pdf"           goto pdf
if "%1"=="pdf-mermaid"   goto pdf-mermaid
if "%1"=="clean"         goto clean

echo Uso: make.bat [build^|build-mermaid^|pdf^|pdf-mermaid^|clean]
exit /b 1

:: ────────────────────────────────────────────
:build
docker build -t %IMAGE% .
goto end

:build-mermaid
call "%~f0" build
docker build -t %IMAGE_MERMAID% -f Dockerfile.mermaid .
goto end

:: ────────────────────────────────────────────
:pdf
:pdf-mermaid
if not exist output mkdir output

set SOURCES=
for /r actividades %%f in (*.md) do (
    set FILE=%%f
    set FILE=!FILE:%cd%\=!
    set FILE=!FILE:\=/!
    set SOURCES=!SOURCES! "!FILE!"
)

set EXTRA_FLAGS=
if "%1"=="pdf-mermaid" set EXTRA_FLAGS=--filter mermaid-filter

set RUN_IMAGE=%IMAGE%
if "%1"=="pdf-mermaid" set RUN_IMAGE=%IMAGE_MERMAID%

docker run --rm ^
 -v "%cd%:/data" ^
 %RUN_IMAGE% ^
 !SOURCES! ^
 --from markdown ^
 --template=eisvogel ^
 --metadata-file=metadata.yaml ^
 --pdf-engine=lualatex ^
 --syntax-highlighting=idiomatic ^
 %EXTRA_FLAGS% ^
 -o %PDF%

goto end

:: ────────────────────────────────────────────
:clean
if exist output\*.pdf del /q output\*.pdf

:end
endlocal
