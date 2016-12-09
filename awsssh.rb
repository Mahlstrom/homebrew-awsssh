class Awsssh < Formula
  desc "ssh made easier on aws"
  homepage "https://github.com/Mahlstrom/awsssh"
  url "https://github.com/Mahlstrom/awsssh/archive/0.3.zip"
  sha256 "8ef03e8a5108eb9be4754d0615d6c5c989b9af0fa120a13da6bf2759691fb493"
  head "https://github.com/Mahlstrom/awsssh.git"

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
