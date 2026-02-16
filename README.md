

### Generate Doc

docker run --rm -v .:/data mi-doc-pandoc documento.md --template=template.tex --metadata-file=metadata.yaml --pdf-engine=xelatex --toc -o output/documento.pdf
