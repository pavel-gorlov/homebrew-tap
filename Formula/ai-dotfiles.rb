class AiDotfiles < Formula
  include Language::Python::Virtualenv

  desc "Package manager for Claude Code configuration"
  homepage "https://github.com/pavel-gorlov/ai-dotfiles"
  url "https://github.com/pavel-gorlov/ai-dotfiles/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "75b163190afa20194caeb6d8d618c68598cfd33de4aaa437c3d1ec5a27992777"
  license "MIT"

  depends_on "python@3.14"

  resource "click" do
    url "https://files.pythonhosted.org/packages/57/75/31212c6bf2503fdf920d87fee5d7a86a2e3bcf444984126f13d8e4016804/click-8.3.2.tar.gz"
    sha256 "14162b8b3b3550a7d479eafa77dfd3c38d9dc8951f6f69c78913a8f9a7540fd5"
  end

  resource "tomli-w" do
    url "https://files.pythonhosted.org/packages/19/75/241269d1da26b624c0d5e110e8149093c759b7a286138f4efd61a60e75fe/tomli_w-1.2.0.tar.gz"
    sha256 "2dd14fac5a47c27be9cd4c976af5a12d87fb1f0b4512f81d69cce3b35ae25021"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-dotfiles --version")
  end
end
