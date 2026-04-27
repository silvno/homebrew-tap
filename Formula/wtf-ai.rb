class WtfAi < Formula
  desc "AI-powered command-line correction tool"
  homepage "https://github.com/silvno/wtf"
  url "https://github.com/silvno/wtf/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "c57e29c65bc3f42645c3f2c3cec3c90c5772f0e9fc8ba2e76f14789073515e42"
  license "MIT"

  depends_on "uv"
  depends_on "ollama" 

  def install
    bin.install "ai.py" => "ai"
    pkgshare.install "wtf.sh"
  end

  def caveats
    <<~EOS
      
      run the following command to make sure you have the default model installed

        ollama pull gemma4:latest

      To enable the 'wtf' typo-correction tool, add the following line 
      to your ~/.zshrc or ~/.bashrc:

        source #{opt_pkgshare}/wtf.sh
        
      Note: The 'ai' command is instantly available without shell configuration.
    EOS
  end
end
