# joomla-version

[![CI](https://github.com/PopArtDesign/joomla-version/actions/workflows/tests.yaml/badge.svg)](https://github.com/PopArtDesign/joomla-version/actions/workflows/tests.yaml)

Bash script to detect the version of a [Joomla!](https://joomla.org) installation.

## Installation

Just download the script to a directory in your `$PATH`. For example:

```sh
wget https://raw.githubusercontent.com/PopArtDesign/joomla-version/refs/heads/main/joomla-version \
    -O ~/.local/bin/joomla-version && chmod +x ~/.local/bin/joomla-version
```

## Usage

```
joomla-version [options] [<path>]
```

### Arguments

-   `<path>`: Optional path to the Joomla! installation directory. Defaults to the current directory.

### Options

-   `-l`, `--long`: Print the long version string, including codename, release date, etc.
-   `-h`, `--help`: Show the help message and exit.

## Examples

### Get the short version string

```sh
$ joomla-version /path/to/joomla
4.1.0
```

### Get the long version string

```sh
$ joomla-version --long /path/to/joomla
Joomla! 4.1.0 Stable [ Amani ] 21-February-2022 16:00 GMT
```

## License

Copyright (c) Voronkovich Oleg. Distributed under the [MIT](LICENSE).
