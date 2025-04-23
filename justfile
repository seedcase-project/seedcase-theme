@_default:
    just --list --unsorted

# Run all necessary build commands.
run-all: check-spelling build-website

# Check spelling
check-spelling:
  uvx typos

# Build the website using Quarto
build-website:
  quarto render
