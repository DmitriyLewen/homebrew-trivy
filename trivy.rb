# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  version "0.10.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aquasecurity/trivy/releases/download/v0.10.2/trivy_0.10.2_macOS-64bit.tar.gz"
    sha256 "5aef6b9b397f7996daa9c4d41f201a418b1dbdd0348d72076e8a987e2e2517ac"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.10.2/trivy_0.10.2_Linux-64bit.tar.gz"
      sha256 "8ae9f3ed2e70e681949e604bc4c094d346880b1d3370e65074cf56a77ea752ed"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.10.2/trivy_0.10.2_Linux-ARM64.tar.gz"
        sha256 "fdea462a1764a873afbde0086a20407125ed6ad311e23796c5b3f727fdac22ee"
      else
      end
    end
  end
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
