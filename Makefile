IMAGE=mi-doc-pandoc
PDF=output/documento.pdf

build-image:
	docker build -t $(IMAGE) .

pdf:
	mkdir -p output
	docker run --rm \
		-v $(PWD):/data \
		$(IMAGE) \
		documento.md \
		--from markdown \
		--template=template.tex \
		--metadata-file=metadata.yaml \
		--pdf-engine=xelatex \
		--toc \
		-o $(PDF)

clean:
	rm -rf output/*
