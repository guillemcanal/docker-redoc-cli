# redoc-cli in Docker

**[ReDoc](https://github.com/Rebilly/ReDoc)'s Command Line Interface**

## Installation

```
docker pull gcanal/redoc-cli
```

## Usage

It is recommanded to create an alias in your `~/.bashrc`, `~/.zshrc`, etc... like so:

```
alias redoc-cli="docker run --rm -it -v $HOME:$HOME -u `id -u`:`id -g` -w `pwd` gcanal/redoc-cli"
```

Two following commands are available:

- `redoc-cli serve [spec]` - starts the server with `spec` rendered with ReDoc. Supports SSR mode (`--ssr`) and can watch the spec (`--watch`)
- `redoc-cli bundle [spec]` - bundles spec and ReDoc into **zero-dependency** HTML file.

Some examples:

- Bundle with main color changed to `orange`: <br> `$ redoc-cli bundle [spec] --options.theme.colors.primary.main=orange`
- Serve with `nativeScrollbars` option set to true: <br> `$ redoc-cli serve [spec] --options.nativeScrollbars`
- Bundle using custom template (check [default template](https://github.com/Rebilly/ReDoc/blob/master/cli/template.hbs) for reference): <br> `$ redoc-cli bundle [spec] -t custom.hbs`
- Bundle using custom template and add custom `templateOptions`: <br> `$ redoc-cli bundle [spec] -t custom.hbs --templateOptions.metaDescription "Page meta description"`

For more details run `redoc-cli --help`.
