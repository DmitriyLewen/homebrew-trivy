# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.22.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DmitriyLewen/trivy/releases/download/v0.22.7/trivy_0.22.7_macOS-64bit.tar.gz"
      sha256 "4e3f16047bd6a231a9f3895c90834e01494e42e4306c427288b885303339e413"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DmitriyLewen/trivy/releases/download/v0.22.7/trivy_0.22.7_macOS-ARM64.tar.gz"
      sha256 "46d5525a0f5f5cec95501ab7522bd7b087a22b6f49b2bef1db5e8ea9d737d12d"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DmitriyLewen/trivy/releases/download/v0.22.7/trivy_0.22.7_Linux-ARM64.tar.gz"
      sha256 "58816ca77d882c09a0490f7374995bcde3eb09fe2ed40c7926989543d4c2d605"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DmitriyLewen/trivy/releases/download/v0.22.7/trivy_0.22.7_Linux-64bit.tar.gz"
      sha256 "c60752fb01cc444e4fc58375db7f12248f12956973627942dce5b421d17afeb4"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
