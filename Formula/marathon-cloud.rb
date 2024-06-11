# typed: false
# frozen_string_literal: true

class MarathonCloud < Formula
  desc "Command-line interface for Marathon Cloud"
  homepage "https://github.com/MarathonLabs/marathon-cloud-cli"
  version "1.0.17"
  license "MIT"

  on_macos do
    url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.17/marathon-cloud-v1.0.17-universal-apple-darwin.tar.gz"
    sha256 "f4ba8d5053cb23fe7a4d7403d5c8dafecca6205ad03d0fbcfc540831df158ccc"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.17/marathon-cloud-v1.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83cb0fc2cf92bc9d80286f81fa21447577e1b6cfe197882afb7d2e54fe563ccd"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.17/marathon-cloud-v1.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd20f6fb54d52ebe154cc78d87f8c0b88b6e69ecc0f596ce35f85e965b03523a"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.17/marathon-cloud-v1.0.17-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "a1ff26316420f394f20e33b8f98efdca007c13809925ea4db6f0a9c3b608de96"

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
