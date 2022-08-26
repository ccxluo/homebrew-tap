class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.4/marathon-0.7.4.zip"
  sha256 "3d6b4cddf4ee2f65911ee466681f7b101d8b587df9cd03b292e033b92126d626"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.4: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
