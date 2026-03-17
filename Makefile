IMAGE   = ffeoe-1smr-2526
PDF     = output/libro-actividades.pdf

# Recoge todos los .md de actividades/ recursivamente, en orden alfabético
SOURCES = $(shell find actividades -name "*.md" | sort)

# ────────────────────────────────────────────
build:
	docker build -t $(IMAGE) .

# ────────────────────────────────────────────
pdf:
	mkdir -p output
	docker run --rm \
		-v $(PWD):/data \
		$(IMAGE) \
		$(SOURCES) \
		--from markdown \
		--template=eisvogel \
		--metadata-file=metadata.yaml \
		--pdf-engine=xelatex \
		--syntax-highlighting=idiomatic \
		--filter mermaid-filter \
		-o $(PDF)

# ────────────────────────────────────────────
clean:
	rm -rf output/*.pdf
