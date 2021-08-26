class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.6.3/marathon-0.6.3.zip"
  sha256 "6bae76a502693f3b02673ddcd3feb5a627c106e803e77b450f4cbafbdfc24981"

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
