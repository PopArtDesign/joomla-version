# joomla-version

Prints used version of [Joomla!](https://joomla.org).

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
