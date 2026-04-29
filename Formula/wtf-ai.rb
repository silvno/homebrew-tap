class WtfAi < Formula
  desc "AI-powered command-line correction tool"
  homepage "https://github.com/silvno/wtf"
  url "https://github.com/silvno/wtf/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "9ff3b3f350b1bcb218f8d233df23bafb8d4ad1bceada3bb504d330c31ca7c933"
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
