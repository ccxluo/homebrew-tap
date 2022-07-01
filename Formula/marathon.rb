class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.3/marathon-0.7.3.zip"
  sha256 "6f413c56caa3c100e344b6a5124b6ca229f8f90955997560246898d389176452"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.3: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
