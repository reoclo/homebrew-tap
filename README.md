# Reoclo Homebrew tap

Pre-compiled releases of the [Reoclo CLI](https://github.com/reoclo/cli) for macOS and Linux.

## Install

```sh
brew install reoclo/tap/reoclo
```

Homebrew resolves `reoclo/tap` to this repository automatically. The first install also adds the tap; subsequent installs reuse it.

## Update

```sh
brew update
brew upgrade reoclo
```

## Uninstall

```sh
brew uninstall reoclo
brew untap reoclo/tap   # optional — removes the tap entirely
```

## Supported platforms

- macOS arm64 (Apple Silicon)
- macOS x86_64 (Intel)
- Linux arm64
- Linux x86_64 (glibc)

For Linux musl or Windows, use the [direct install script](https://get.reoclo.com/cli) or download a binary from the [releases page](https://github.com/reoclo/cli/releases).

## How this tap is maintained

`Formula/reoclo.rb` is generated automatically by the CI release pipeline in [`reoclo/cli`](https://github.com/reoclo/cli) every time a `vX.Y.Z` tag is pushed. Each release commit here corresponds to one CLI release.

Source: <https://github.com/reoclo/cli/blob/main/scripts/publish-homebrew.sh>
