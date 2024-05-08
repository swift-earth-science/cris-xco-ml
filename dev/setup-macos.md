# Setup for macOS

>  Shell scripts are `bash`

## Misc

### Finder

Show hidden files:

```bash
defaults write com.apple.finder AppleShowAllFiles YES
```

Hold the 'Option/alt' key, then right click on the Finder icon in the dock and click Relaunch

## Homebrew

Install [Homebrew](https://brew.sh/):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## bash 5

```bash
brew install bash
```

## git

```bash
brew install git
```

## coreutils, wget, curl

```bash
brew install coreutils wget curl 
```

## cairo, geos

```bash
brew install cairo geos
```

## Development Tools

### Xcode

Install Command Line Tools (CLT) for Xcode:

```bash
xcode-select --install
```

### Visual Studio Code

Download and install from [Visual Studio Code](https://code.visualstudio.com/download) site.

Open Visual Studio Code and press `Cmd + Shift + p`. Select `Shell Command: Install 'code' command in PATH`. 

### pyenv

Install Python version manager [pyenv](https://github.com/pyenv/pyenv)

```bash
brew install pyenv
```
