@_default:
    just --list --unsorted

# Run all necessary build commands.
run-all: build-website

# Generate SVG images from all PlantUML files
generate-puml-all:
  docker run --rm -v $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tsvg "**/*.puml"

# Generate SVG image from specific PlantUML file
generate-puml name:
  docker run --rm -v  $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tsvg "**/{{name}}.puml"

# Build the website using Quarto
build-website:
  quarto render
