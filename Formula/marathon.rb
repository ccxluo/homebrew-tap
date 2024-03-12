class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://docs.marathonlabs.io/runner/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.10.0/marathon-0.10.0.zip"
  sha256 "b0f8098f6a1a3ec21a43b66404a783edabbe2102ac930f60eb8b5ca111c6954d"
  version "0.10.0"
  license "GPL-2.0-only"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end
end
