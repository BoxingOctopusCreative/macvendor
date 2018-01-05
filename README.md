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

```bash
$ brew tap tuxotaku/taptastic
$ brew install macvendor
```

## Usage

`$ macvendor -mac 00:DE:AD:BE:EF:00`