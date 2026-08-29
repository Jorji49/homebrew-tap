# frozen_string_literal: true

class Streamtop < Formula
  desc "Terminal HLS, DASH, and IPTV stream monitor with wire probes and metrics"
  homepage "https://github.com/Jorji49/streamtop"
  url "https://github.com/Jorji49/streamtop/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "2cf09495d6f3693e3ef996521100e740e62d2a20b133e217ea5a76d649f805f2"
  license "MIT"
  head "https://github.com/Jorji49/streamtop.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "streamtop", shell_output("#{bin}/streamtop --help")
  end
end
