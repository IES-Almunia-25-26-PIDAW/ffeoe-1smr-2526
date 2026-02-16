@echo off

docker run --rm ^
  -v "%cd%":/data ^
  mi-doc-pandoc ^
  documento.md ^
  --template eisvogel ^
  --metadata-file=metadata.yaml ^
  --pdf-engine=xelatex ^
  --toc ^
  -o output/documento.pdf

pause
