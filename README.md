# toolfoundrylabs Homebrew Tap

Homebrew formulae for command-line tools built by [toolfoundrylabs](https://github.com/toolfoundrylabs).

## Install

```sh
brew install toolfoundrylabs/tap/jdoc
```

Or add the tap once and install by name:

```sh
brew tap toolfoundrylabs/tap
brew install jdoc

## jdoc

jDoc is a terminal browser for official Java SE 17, 21, and 25 API documentation. Look up any JDK class, filter its members as you type, and read rendered Javadoc without leaving the terminal.

```sh
brew install toolfoundrylabs/tap/jdoc
jdoc String
```

- **Requires** macOS. Homebrew installs the Java runtime jDoc needs, so you don't need to install Java yourself.
- **Documentation:** see the [jDoc README](https://github.com/vineeth-au/jDoc#readme), or run `jdoc --help`.
- **Issues with jDoc itself:** [open an issue on the jDoc repository](https://github.com/vineeth-au/jDoc/issues).

## Update

```sh
brew update
brew upgrade jdoc
```

## Uninstall

```sh
brew uninstall jdoc
brew untap toolfoundrylabs/tap
```

Uninstalling doesn't remove data a tool stores in your home directory. For jDoc, delete
its cache, bookmarks, and saved settings with:

```sh
rm -rf ~/Library/Caches/jDoc
```

## For maintainers

Formulae live in `Formula/`, one file per tool, named after the command (`Formula/jdoc.rb`).

To publish a new version:

1. Publish the tool's GitHub release with its asset attached.
2. Get the checksum of the asset:
   ```sh
   curl -sL <asset-url> | shasum -a 256
   ```
3. Update `url` and `sha256` in the formula and commit.
4. Test it locally:
   ```sh
   brew update
   brew reinstall --verbose toolfoundrylabs/tap/jdoc
   brew test jdoc
   brew audit --strict toolfoundrylabs/tap/jdoc
   ```

Never change a published asset after a formula points to it. Its checksum would no longer
match, and every install would fail. Publish a new version instead.

## License

Formulae in this repository are licensed under the [MIT License](LICENSE). Each tool is
distributed under its own license.
