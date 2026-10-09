# DPanel Homebrew tap

This tap provides DPanel CE and PE as command-line servers and desktop apps for macOS.

Add the tap and trust it:

```sh
brew tap DPanel-dev/homebrew https://github.com/DPanel-dev/homebrew.git
brew trust DPanel-dev/homebrew
```

Install one of the four packages:

| Edition | Command-line server | Desktop app |
| --- | --- | --- |
| CE | `brew install --formula DPanel-dev/homebrew/dpanel` | `brew install --cask DPanel-dev/homebrew/dpanel` |
| PE | `brew install --formula DPanel-dev/homebrew/dpanel-pe` | `brew install --cask DPanel-dev/homebrew/dpanel-pe` |

Start an installed command-line server with `brew services start dpanel` or
`brew services start dpanel-pe`. The default port is 8086, and service data is
stored in Homebrew's `var/dpanel` directory.

The current releases are unsigned and may be blocked by macOS Gatekeeper.
