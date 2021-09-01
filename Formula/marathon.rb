class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.6.4/marathon-0.6.4.zip"
  sha256 "2502ffb2e4de1f56f3e09df32a151c64fba1c4cdc662993aec5b35b7fdb72a34"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.6.3: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
