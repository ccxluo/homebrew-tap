class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.6/marathon-0.7.6.zip"
  sha256 "5157d57c978c46931ca0c8bf5efd43ea17ca35b622ef4ce41113268a8f7dcdde"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.6: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
