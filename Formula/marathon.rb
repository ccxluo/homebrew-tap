class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.6.5/marathon-0.6.5.zip"
  sha256 "ad58691653b946cf04be7c23aea8b022116dc0aa2b95cd9c0edc0b58f98c7fe4"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.6.5: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
