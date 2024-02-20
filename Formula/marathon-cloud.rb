# typed: false
# frozen_string_literal: true

class MarathonCloud < Formula
  desc "Command-line interface for Marathon Cloud"
  homepage "https://github.com/MarathonLabs/marathon-cloud-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.3/marathon-cloud-v1.0.3-universal-apple-darwin.tar.gz"
    sha256 "79fb5c5cf6bfca93360ab789ace8a48ea59bb1c750ee78d0034cefd5fde08830"

    def install
      bin.install "marathon-cloud"
      generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
      man1.install Dir["*.1"]
    end

    def caveats; <<~EOS
      ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
      You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
      ▪ For Zsh users:
        Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
      ▪ For Bash users:
        1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
           Add the following line to your ~/.bash_profile:
           # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
           [[ -r \"/Users/anton/.brew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/anton/.brew/etc/profile.d/bash_completion.sh\"
        2) `source ~/.bash_profile`
    EOS
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.3/marathon-cloud-v1.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9333bb2d2db107b05fb20752b58ba762be6e723876eac2defd6d83c687b2ebad"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end

      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.3/marathon-cloud-v1.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6021b7db1961a39133b128db628d7623bbb50680f0482ef2492fa3e5f1df766d"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end

      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.3/marathon-cloud-v1.0.3-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "c450df50ada6593ab649bc21551796b16769711c00bb2b13cc30ee799e3642e0"

      def install
        bin.install "marathon-cloud"
        generate_completions_from_executable(bin/"marathon-cloud", "completions", base_name: "marathon-cloud")
        man1.install Dir["*.1"]
      end
      
      def caveats; <<~EOS
        ⚠️  To have superior experience, enable autocompletion on Brew. ⚠️
        You need to enable autocompletion just once for Brew. If it is already enabled, you can skip this part.
        ▪ For Zsh users:
          Follow https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
        ▪ For Bash users:
          1) `brew install bash-completion` and follow the printed \"Caveats\" section. Example \"Caveats\" instructions:
             Add the following line to your ~/.bash_profile:
             # !! Note that paths may differ depending on your installation, so you should follow the Caveats section on your system.
             [[ -r \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/ubuntu/.linuxbrew/etc/profile.d/bash_completion.sh\"
          2) `source ~/.bash_profile`
      EOS
      end
    end
  end
end
