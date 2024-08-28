class VimeoDl < Formula
  desc "Tool to download private videos hosted on Vimeo"
  homepage "https://github.com/markmals/vimeo-dl"
  url "https://github.com/markmals/vimeo-dl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "01c625d07ba5c1a600778c8675d6ce0c28f925902446094df5d859334fbc0d96"

  bottle do
    root_url "https://github.com/markmals/homebrew-media-server/releases/download/vimeo-dl-0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "16341674d2b77e8a47b033b31ac23d950c6532661b7fc61d6fe7aadad70efd70"
    sha256 cellar: :any_skip_relocation, ventura:      "8e14f391d5d7934ea8e11db64bcbca29ded5020368a097c064beb55d9a0d7e94"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ac474045045838a236f1f37ef01ef0654f4fccf72630f5a58d675ef611c6baca"
  end

  depends_on "deno" => :build

  def install
    system "deno", "task", "compile"
    bin.install "vimeo-dl"
  end
end
