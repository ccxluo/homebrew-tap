class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.4.1/marathon-0.4.1.zip"
  sha256 "62365332db0946da9f7d0095f3179dcdc29fa497e3fc17dad8a1edeaea6cb577"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.4.1: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
