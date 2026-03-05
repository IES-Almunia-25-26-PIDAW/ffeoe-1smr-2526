IMAGE=ffeoe-1smr-2526
PDF=output/ffeoe-1smr-2526.pdf

build:
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
