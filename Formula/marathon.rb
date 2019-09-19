class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.5.1/marathon-0.5.1.zip"
  sha256 "306f05d44e87490c7ec7a92656fd286306d9db2b003e9cc60a7d7d64e03d32d6"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.5.1: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
