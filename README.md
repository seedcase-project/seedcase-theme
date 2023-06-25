# Seedcase Quarto theme

This theme is used for the various `seedcase-project` websites.

## Installing

Running this command will create a new project based on this theme.

```bash
quarto use template seedcase-project/seedcase-theme
```

This will install the extension and create an example qmd file that you can use as a starting place for your article.

If you just want to add the theme to an existing repo, use:

```bash
quarto add seedcase-project/seedcase-theme
```

## Using

You don't need to do much. Simply add the extension and add the below yaml key-value pair to the `_quarto.yml` file:

```yaml
format: seedcase-theme-html
```

To **update** the `r3-theme`, run:

``` bash
quarto update seedcase-project/seedcase-theme
```