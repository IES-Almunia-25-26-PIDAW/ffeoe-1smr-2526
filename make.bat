@echo off
setlocal enabledelayedexpansion

set IMAGE=ffeoe-1smr-2526
set PDF=output/libro-actividades.pdf

if "%1"=="build" goto build
if "%1"=="pdf" goto pdf
if "%1"=="clean" goto clean

echo Uso: build.bat [build^|pdf^|clean]
exit /b 1

:build
docker build -t %IMAGE% .
goto end

:pdf
if not exist output mkdir output

set SOURCES=

for /r actividades %%f in (*.md) do (
    set FILE=%%f
    set FILE=!FILE:%cd%\=!
    set FILE=!FILE:\=/!
    set SOURCES=!SOURCES! "!FILE!"
)

docker run --rm ^
 -v "%cd%:/data" ^
 %IMAGE% ^
 !SOURCES! ^
 --from markdown ^
 --template=eisvogel ^
 --metadata-file=metadata.yaml ^
 --pdf-engine=xelatex ^
 --syntax-highlighting=idiomatic ^
 --toc-depth=2  ^
 --filter mermaid-filter ^
 -o %PDF%

goto end

:clean
if exist output\*.pdf del /q output\*.pdf

:end
endlocal