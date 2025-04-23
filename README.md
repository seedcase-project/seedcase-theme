# Seedcase Quarto theme

This theme is used for the various `seedcase-project` websites.

## Installing

Running this command will create a new project based on this theme.

``` bash
quarto use template seedcase-project/seedcase-theme
```

This will install the extension and create an example qmd file that you
can use as a starting place for your article.

If you just want to add the theme to an existing repo, use:

``` bash
quarto add seedcase-project/seedcase-theme
```

If you want to include items that are not included in the `quarto use`
like the `.gitignore` file, use:

``` bash
# Only the HEAD of the repo with `filter`
gh repo clone seedcase-project/seedcase-theme -- --filter=tree:0
# Rename the cloned folder
mv seedcase-theme my-project
cd my-project
# Remove the existing .git folder
rm -rf .git
git init
```

Then you can start adding or modifying the files in the project to match
your needs.

## Using

You don't need to do much. Simply add the extension and add the below
yaml key-value pair to the `_quarto.yml` file:

``` yaml
format: seedcase-theme-html
```

To **update** the `seedcase-theme`, run:

``` bash
quarto update seedcase-project/seedcase-theme
```

## Building

Using the [justfile](https://just.systems), you can build the project with:

``` bash
just run-all
```

You will need [uv](https://docs.astral.sh/uv/), as some commands in the justfile needs it.
