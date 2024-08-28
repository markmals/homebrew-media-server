class VimeoDl < Formula
    desc "A tool to download private videos hosted on Vimeo."
    homepage "https://github.com/markmals/vimeo-dl"
    url "https://github.com/markmals/vimeo-dl/archive/v0.1.0.tar.gz"
    sha256 "01c625d07ba5c1a600778c8675d6ce0c28f925902446094df5d859334fbc0d96"

    depends_on "deno" => :build

    def install
        system "deno", "run", "compile"
        bin.install "vimeo-dl"
    end
end