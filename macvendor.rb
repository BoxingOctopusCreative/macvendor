Class Macvendor < Formula

    desc "CLI tool which looks up hardware vendor names for network devices based on the macvendors.com API"
    homepage "https://github.com/tuxotaku/macvendor"
    url "https://github.com/TuxOtaku/macvendor/releases/download/1.0/macvendor-darwin-amd64"
    sha256 "cb67c08ece570cdac599d87ad295e46b1a195213ecf18ad986b584e671cbf2c2"

    bottle do
        cellar :any_skip_relocation
        sha256 "cb67c08ece570cdac599d87ad295e46b1a195213ecf18ad986b584e671cbf2c2" => :sierra
    end

    def install
        bin.install "macvendor"
    end

    test do
        shell_output("#{bin}/macvendor -h", 1)
    end

end