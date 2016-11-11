class Blutti < Formula
  desc "ssh made easier on aws"
  homepage "https://github.com/Mahlstrom/homebrew-blutti"
  head "https://github.com/Mahlstrom/homebrew-blutti.git"

  bottle :unneeded

  def install
    bin.install 'blutti'
    bash_completion.install "bash_completion" => "blutti"
  end

  def caveats; <<-EOS.undent
    Please note that upstream has asked us to make explicit managing
    nvm via Homebrew is unsupported by them and you should check any
    problems against the standard nvm install method prior to reporting.
    You should create NVM's working directory if it doesn't exist:
      mkdir ~/.nvm
    Add the following to #{shell_profile} or your desired shell
    configuration file:
      export NVM_DIR="$HOME/.nvm"
      . "#{opt_prefix}/nvm.sh"
    You can set $NVM_DIR to any location, but leaving it unchanged from
    #{prefix} will destroy any nvm-installed Node installations
    upon upgrade/reinstall.
    Type `nvm help` for further information.
  EOS
  end
end