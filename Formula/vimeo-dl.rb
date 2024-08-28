class VimeoDl < Formula
  desc "Tool to download private videos hosted on Vimeo"
  homepage "https://github.com/markmals/vimeo-dl"
  url "https://github.com/markmals/vimeo-dl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "01c625d07ba5c1a600778c8675d6ce0c28f925902446094df5d859334fbc0d96"

  depends_on "deno" => :build

  def install
    system "deno", "task", "compile"
    bin.install "vimeo-dl"
  end

  test do
    assert_match "0.1.0", shell_output(bin/"vimeo-dl -V", 255)
  end
end
