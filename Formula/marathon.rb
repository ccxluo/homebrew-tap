class Marathon < Formula
  desc "Cross-platform test runner written for Android and iOS projects"
  homepage "https://marathonlabs.github.io/marathon/"
  url "https://github.com/MarathonLabs/marathon/releases/download/0.7.2/marathon-0.7.2.zip"
  sha256 "ce01b7a68d345aeb0eb12a5b555af9f08444a08ab05c29df1db085129aa78638"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"marathon").write_env_script libexec/"bin/marathon", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "marathon v0.7.2: unrecognized option '--version'", shell_output("#{bin}/marathon --version")
  end
end
