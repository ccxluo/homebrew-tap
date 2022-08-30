class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.5/marathon-0.7.5.zip"
  sha256 "a1d35163bd493601f34113ecfa5440a9b53eae22a005959767aa02a198254750"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.5: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
