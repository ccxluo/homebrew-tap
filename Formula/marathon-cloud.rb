# typed: false
# frozen_string_literal: true

class MarathonCloud < Formula
  desc "Command-line interface for Marathon Cloud"
  homepage "https://github.com/MarathonLabs/marathon-cloud-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.0/marathon-cloud-v1.0.0-universal-apple-darwin.tar.gz"
    sha256 "ed11d4fbcbd93734a839fbf393fa5d97f35294140e8aa09ad684f303bc4f7784"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.0/marathon-cloud-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99fd591d592a2e11dcfbc473eec001383de4df6b3b0f6699506cfae889b6594b"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.0/marathon-cloud-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e0a1e0a0011fb50195c894336edea26c75f94796958a145ee36a53c014965ad"

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
      url "https://github.com/MarathonLabs/marathon-cloud-cli/releases/download/1.0.0/marathon-cloud-v1.0.0-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "029a52d90cd21a8fa7657e15c29552bf0f892365f0651d0ef323c1805e13e5f2"

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
