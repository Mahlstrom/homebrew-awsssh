class Awsssh < Formula
  desc "ssh made easier on aws"
  homepage "https://github.com/Mahlstrom/awsssh"
  url "https://github.com/Mahlstrom/awsssh/archive/0.3.1.zip"
  sha256 "344fcb912475e6bdd54312cff3944f929092ec36f200a85119f5d7962ff7a3da"
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
