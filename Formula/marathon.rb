class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.5.2/marathon-0.5.2.zip"
  sha256 "a25c4bbe99eb3564dd682051adbedff24536a5e7020100529f53f7341d68584e"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.5.2: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
