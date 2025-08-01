@_default:
    just --list --unsorted

# This hidden recipe (with `_` prefix) is used to group the checks together
@_checks: check-spelling check-commits

# Run all build-related recipes in the justfile
run-all: _checks test-theme build-readme

# Install the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Check the commit messages on the current branch that are not on the main branch
check-commits:
  #!/bin/zsh
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On `main` or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test the theme by building the website using Quarto
test-theme:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  # Use `uvx` in order to use Python and jupyter3
  uvx --from quarto quarto render README.qmd --to gfm
