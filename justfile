@_default:
    just --list --unsorted

# Run all necessary build commands.
run-all: check-spelling check-commits build-website

# Check spelling
check-spelling:
  uvx typos

# Run checks on commits with non-main branches
check-commits:
  #!/bin/zsh
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    uvx cz check --rev-range main..HEAD
  else
    echo "Can't either be on ${branch_name} or have more than ${number_of_commits}."
  fi

# Build the website using Quarto
build-website:
  quarto render
