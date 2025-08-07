@_default:
    just --list --unsorted

# This hidden recipe (with `_` prefix) is used to group the checks together
@_check: check-spelling check-commits

# Run all check, test, and build commands.
run-all: _check test-theme build-readme

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
  #!/usr/bin/env bash
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    # If there is an issue, run `uv tool update-shell`.
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On 'main' or current branch doesn't have any commits."
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
