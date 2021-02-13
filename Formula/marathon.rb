class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://malinskiy.github.io/marathon/"
  url "https://github.com/Malinskiy/marathon/releases/download/0.6.1/marathon-0.6.1.zip"
  sha256 "61e2340b2a16ae3e50d6518b6fe92613df1d8b064362507eb64fa6cd38efaa4c"

  bottle :unneeded

  depends_on "openjdk@8"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.6.1: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
