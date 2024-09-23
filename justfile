@_default:
    just --list --unsorted

# Generate SVG images from all PlantUML files
generate-puml-all:
  docker run --rm -v $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tsvg "**/*.puml"

# Generate SVG image from specific PlantUML file
generate-puml name:
  docker run --rm -v  $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tsvg "**/{{name}}.puml"

# Build the website using Quarto
build-website:
  docker run --rm -v $(pwd):/site -w /site ghcr.io/quarto-dev/quarto:latest quarto render
