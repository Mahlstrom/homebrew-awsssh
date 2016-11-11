class Awsssh < Formula
  desc "ssh made easier on aws"
  homepage "https://github.com/Mahlstrom/homebrew-awsssh"
  head "https://github.com/Mahlstrom/homebrew-awsssh.git"

  bottle :unneeded

  def install
    bin.install 'awsssh'
    bash_completion.install "bash_completion" => "awsssh"
  end

  def caveats; <<-EOS.undent
    Please add this to your ~/.bash_profile
      . "/usr/local/etc/bash_completion.d/awsssh"
  EOS
  end
end