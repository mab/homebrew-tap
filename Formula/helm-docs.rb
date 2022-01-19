# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmDocs < Formula
  desc "Automatically generate markdown documentation for helm charts"
  homepage "https://github.com/norwoodj/helm-docs"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.7.0/helm-docs_1.7.0_Darwin_arm64.tar.gz"
      sha256 "51ce168e3af2dfde5ccbeafd277d9c77cf004544759882b5e3438448d84d6e89"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.7.0/helm-docs_1.7.0_Darwin_x86_64.tar.gz"
      sha256 "e34b4918ad92c6e553130029895aefc76a353f6ea7d968bbdf8037305dd22313"

      def install
        bin.install "helm-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.7.0/helm-docs_1.7.0_Linux_x86_64.tar.gz"
      sha256 "b39ad34acd03256317692e5c671847d6f12bcd6c92adf05b3df83363d1dac20f"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.7.0/helm-docs_1.7.0_Linux_armv6.tar.gz"
      sha256 "a75fbf614e346d69864e527fd845ee07c2dd26cbd968d23ebffbadcb2dcd1b13"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.7.0/helm-docs_1.7.0_Linux_arm64.tar.gz"
      sha256 "8e99abd3c773d46bbfcbeb33d2a857b6a09a1e258ac205acf27bfcc46bdb5895"

      def install
        bin.install "helm-docs"
      end
    end
  end

  test do
    system "#{bin}/helm-docs --version"
  end
end
