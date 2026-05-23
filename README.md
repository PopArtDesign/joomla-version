# joomla-version

[![CI](https://github.com/PopArtDesign/joomla-version/actions/workflows/tests.yaml/badge.svg)](https://github.com/PopArtDesign/joomla-version/actions/workflows/tests.yaml)

Bash script to detect the version of a [Joomla!](https://joomla.org) installation.

## Installation

Just download the script to a directory in your `$PATH`. For example:

```sh
wget https://raw.githubusercontent.com/PopArtDesign/joomla-version/refs/tags/v1.0/joomla-version \
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

```sh
# Get the short version string
joomla-version /path/to/joomla
4.1.0

# Get the long version string
joomla-version --long /path/to/joomla
Joomla! 4.1.0 Stable [ Amani ] 21-February-2022 16:00 GMT
```

## Why use `joomla-version` instead of `php cli/joomla.php`?

While `php cli/joomla.php` can report the Joomla! version, the `joomla-version` script offers several advantages:

-   **Direct output:** It directly outputs the version string, making it easy to use in other scripts or for quick checks without needing to parse additional CLI output.
-   **No PHP dependency:** The script is written in Bash and does not require a PHP installation on the system, which is ideal for environments where PHP might not be present or compatible.
-   **Performance:** It can be faster as it avoids the overhead of bootstrapping the entire Joomla! CLI application for a simple version check.
-   **Robustness:** Designed specifically for version detection, it provides more consistent and reliable results across different Joomla! versions and directory structures.

Here is an example of how to list the versions of multiple Joomla! installations using `find`:

```sh
# List versions of multiple Joomla! installations using find
find /var/www -type f -name "configuration.php" -exec dirname {} \; | while read -r joomla_path; do
    echo -n "$joomla_path: "
    joomla-version "$joomla_path"
done
```

## License

Copyright (c) Voronkovich Oleg. Distributed under the [MIT](LICENSE).
