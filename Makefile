# build a smaller executable without symbols and debug info for all supported OSs and ARCHs
BASENAME = macvendor
BUILD_DIR = releases
BUILD_FLAGS = -ldflags "-s -w"

.PHONY: release release-linux release-windows release-darwin

release-linux:
	env GOOS=linux env GOARCH=amd64 go build $(BUILD_FLAGS) -o $(BUILD_DIR)/$(BASENAME)-linux-amd64
	env GOOS=linux env GOARCH=386 go build $(BUILD_FLAGS) -o $(BUILD_DIR)/$(BASENAME)-linux-386

release-windows:
	env GOOS=windows env GOARCH=amd64 go build $(BUILD_FLAGS) -o $(BUILD_DIR)/$(BASENAME)-windows-amd64
	env GOOS=windows env GOARCH=386 go build $(BUILD_FLAGS) -o $(BUILD_DIR)/$(BASENAME)-windows-386

release-darwin:
	env GOOS=darwin env GOARCH=amd64 go build $(BUILD_FLAGS) -o $(BUILD_DIR)/$(BASENAME)-darwin-amd64

release: release-linux release-windows release-darwin