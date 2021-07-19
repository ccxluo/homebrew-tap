class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.6.2/marathon-0.6.2.zip"
  sha256 "1d60f4a3326b88642640042552a54655c5f9a8410a08e93ae292e5b16effceb6"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.6.2: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
