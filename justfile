@_default:
    just --list --unsorted

# Run all necessary build commands.
run-all: build-website

# Build the website using Quarto
build-website:
  quarto render
