# This file was generated by GoReleaser. DO NOT EDIT.
class HelmDocs < Formula
  desc "Automatically generate markdown documentation for helm charts"
  homepage "https://github.com/norwoodj/helm-docs"
  version "0.6.0"

  if OS.mac?
    url "https://github.com/norwoodj/helm-docs/releases/download/v0.6.0/helm-docs_0.6.0_Darwin_x86_64.tar.gz"
    sha256 "5504c21834696d14b69732948179c2191488fb154b5cd94d3b425157f54583e4"
  elsif OS.linux?
    url "https://github.com/norwoodj/helm-docs/releases/download/v0.6.0/helm-docs_0.6.0_Linux_x86_64.tar.gz"
    sha256 "3333673735989476af7dd0b4159976d0bbb7b52f48d53eeec3cb8e9636d6804c"
  end

  def install
    bin.install "helm-docs"
  end

  test do
    system "#{bin}/helm-docs --version"
  end
end
