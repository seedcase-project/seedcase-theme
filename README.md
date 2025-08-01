# seedcase-theme: Quarto extension for Seedcase Projects


[![GitHub
License](https://img.shields.io/github/license/seedcase-project/seedcase-theme)](https://github.com/seedcase-project/seedcase-theme/blob/main/LICENSE.md)
[![GitHub
Release](https://img.shields.io/github/v/release/seedcase-project/seedcase-theme)](https://github.com/seedcase-project/seedcase-theme/releases/latest)
[![pre-commit.ci
status](https://results.pre-commit.ci/badge/github/seedcase-project/seedcase-theme/main.svg)](https://results.pre-commit.ci/latest/github/seedcase-project/seedcase-theme/main)
[![lifecycle](https://lifecycle.r-lib.org/articles/figures/lifecycle-experimental.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

This repository contains Quarto shortcodes, embedded extensions, and
style theming that is used by all Seedcase Project Quarto-based
repositories.

## Installing

To install the extension, use:

``` bash
quarto add rostools/rostools-theme
```

To update the `rostools-theme`, run:

``` bash
quarto update rostools/rostools-theme
```

## Using

This extension After add the extension and add the below yaml key-value
pair to the `_quarto.yml` file:

``` yaml
format: seedcase-theme-html
```

Or for project-level configurations:

``` yaml
project:
  type: seedcase-theme
```

See this repository’s
[`_quarto.yml`](https://github.com/seedcase-project/seedcase-theme/blob/main/_quarto.yml)
and
[`index.qmd`](https://github.com/seedcase-project/seedcase-theme/blob/main/index.qmd)
files for examples of how you would use this extension.

## Contributing

Check out our [contributing document](CONTRIBUTING.md) for information
on how to contribute to the project, including how to set up your
development environment.

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/seedcase-project/.github/blob/main/CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.

## Licensing

This project is licensed under the [MIT
License](https://github.com/seedcase-project/seedcase-theme/blob/main/LICENSE.md).

## Changelog

For a list of changes, see our
[changelog](https://seedcase-theme.seedcase-project.org/docs/releases/)
page.
