IMAGE         = ffeoe-1smr-2526
IMAGE_MERMAID = ffeoe-1smr-2526-mermaid
PDF           = output/libro-actividades.pdf

# Recoge todos los .md de actividades/ recursivamente, en orden alfabético
SOURCES = $(shell find actividades -name "*.md" | sort)

PANDOC_FLAGS = \
	$(SOURCES) \
	--from markdown \
	--template=eisvogel \
	--metadata-file=metadata.yaml \
	--pdf-engine=lualatex \
	--syntax-highlighting=idiomatic

# ────────────────────────────────────────────
build:
	docker build -t $(IMAGE) .

build-mermaid: build
	docker build -t $(IMAGE_MERMAID) -f Dockerfile.mermaid .

# ────────────────────────────────────────────
pdf:
	mkdir -p output
	docker run --rm \
		-v $(PWD):/data \
		$(IMAGE) \
		$(PANDOC_FLAGS) \
		-o $(PDF)

pdf-mermaid:
	mkdir -p output
	docker run --rm \
		-v $(PWD):/data \
		$(IMAGE_MERMAID) \
		$(PANDOC_FLAGS) \
		--filter mermaid-filter \
		-o $(PDF)

# ────────────────────────────────────────────
clean:
	rm -rf output/*.pdf
