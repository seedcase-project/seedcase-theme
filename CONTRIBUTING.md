# Contributing

## Issues and bugs :bug:

The easiest way to contribute is to report issues or bugs that you might
find while using `seedcase-theme`. You can do this by creating a
[new](https://github.com/seedcase-project/seedcase-theme/issues/new/choose)
issue on our GitHub repository.

## Adding or modifying content :pencil2:

If you would like to contribute content, please check out our
[guidebook](https://guidebook.seedcase-project.org/) for more specific
details on how we work and develop. It is a regularly evolving document,
so is at various states of completion.

To contribute to `seedcase-theme`, you first need to install
[uv](https://docs.astral.sh/uv/) and
[justfile](https://just.systems/man/en/packages.html). We use uv and
justfile to manage our project, such as to run checks and test the
theme. Both the uv and justfile websites have a more detailed guide
on using uv, but below are some simple instructions to get you started.

It's easiest to install uv and justfile using
[pipx](https://pypa.github.io/pipx/), so install that first. Then,
install uv and justfile by running:

``` bash
pipx install uv rust-just
```

We keep all our development workflows in the `justfile`, so you can
explore it to see what commands are available. To see a list of commands
available, run:

``` bash
just
```

As you contribute, make sure your changes will pass our tests by opening
a terminal so that the working directory is the root of this project
(`seedcase-theme/`) and running:

``` bash
just run-all
```

When committing changes, please try to follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits)
as Git messages. Using this convention allows us to be able to
automatically create a release based on the commit message by using
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen).
If you don't use Conventional Commits when making a commit, we will
revise the pull request title to follow that format, as we use [squash
merges](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/squashing-commits/about-squash-merges)
when merging pull requests, so all other commits in the pull request
will be squashed into one commit.
