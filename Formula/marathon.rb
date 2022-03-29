class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.0/marathon-0.7.0.zip"
  sha256 "6f6a3c7eb7763aabd7cee235f8b492b0663489dac320e8b2ac0d435e154f68b0"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.0: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
