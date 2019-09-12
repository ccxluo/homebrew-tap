class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.5.0/marathon-0.5.0.zip"
  sha256 "5dd754ca721bc385a9c4aea3e0b151ce98aa0a02efdabfc1e1d2fed6a478693c"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.5.0: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
