class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.6.0/marathon-0.6.0.zip"
  sha256 "aa31ad62aaea44f8870f42a59aa424affe02e44f49840e6ddb1087ccdd8e6af3"

  bottle :unneeded

  depends_on "openjdk@8"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.5.2: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
