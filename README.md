# DPanel Homebrew tap

This tap provides DPanel CE and PE desktop apps for macOS.

Add the tap and trust it:

```sh
brew tap DPanel-dev/homebrew https://github.com/DPanel-dev/homebrew.git
brew trust DPanel-dev/homebrew
```

Install one of the desktop apps:

| Edition | Install command |
| --- | --- |
| CE | `brew install --cask DPanel-dev/homebrew/dpanel` |
| PE | `brew install --cask DPanel-dev/homebrew/dpanel-pe` |

The desktop app includes the DPanel server. Its settings and server data are
stored under `~/.dpanel`; the server data directory is `~/.dpanel/dpanel`.
The default server port is 8086.

The current releases are unsigned and may be blocked by macOS Gatekeeper.
