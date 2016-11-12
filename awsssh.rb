class Awsssh < Formula
  desc "ssh made easier on aws"
  homepage "https://github.com/Mahlstrom/awsssh"
  url "https://github.com/Mahlstrom/awsssh/archive/0.1.zip"
  sha256 "12cdfa071727334ededd74b1099a143c0f62d487c8bf45b28ddeef8ff33b6a15"
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