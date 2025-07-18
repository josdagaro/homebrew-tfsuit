# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfsuit < Formula
  desc "Fast, opinionated Terraform naming linter & fixer"
  homepage "https://github.com/josdagaro/tfsuit"
  version "1.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/josdagaro/tfsuit/releases/download/v1.3.9/tfsuit_1.3.9_darwin_amd64.tar.gz"
      sha256 "d29c131c2aca4b74beeff4f491c1b2c08b591690162505af19828591f45612fd"

      def install
        bin.install "tfsuit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/josdagaro/tfsuit/releases/download/v1.3.9/tfsuit_1.3.9_darwin_arm64.tar.gz"
      sha256 "9e260c8aab71e6e36ce5e67005a0f1b05835d1917ed4ae6db0f771e1126513d2"

      def install
        bin.install "tfsuit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/josdagaro/tfsuit/releases/download/v1.3.9/tfsuit_1.3.9_linux_amd64.tar.gz"
      sha256 "0621dc8232cce00b51fa1a509a96db8e6d42f9e62ae71fed5fa54ab8748105be"
      def install
        bin.install "tfsuit"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/josdagaro/tfsuit/releases/download/v1.3.9/tfsuit_1.3.9_linux_arm64.tar.gz"
      sha256 "b70264ce24f03c8b795324ab939172128fc81e5302a1c1685d67498e971033c8"
      def install
        bin.install "tfsuit"
      end
    end
  end

  test do
    tfsuit --help
  end
end
