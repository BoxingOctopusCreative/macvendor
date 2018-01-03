# macvendor

CLI tool which looks up hardware vendor names for network devices based on the macvendors.com API

## Building

### For all platforms

`$ make release`

### For single platform

`$ make release-<platform_name>` (where `<platform_name>` is either `windows`, `linux`, or `darwin`)

## Installing

### Via Make

*Note: This is only supported on Mac or Linux*

`$ sudo make install`

### Via Homebrew

*Note: Official Homebrew support is pending. Until then feel free to copy the `macvendor.rb` formula in this repo to `/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/macvendor.rb` on your Mac.*

`$ brew install macvendor`

## Usage

`$ macvendor -mac 00:DE:AD:BE:EF:00`