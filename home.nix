{config, pkgs, ...}:
{
  home.username = "menezess42";
  home.homeDirectory = "/home/menezess42";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  nixpkgs.config.allowUnfree=true;
  home.packages = with pkgs; [
    cmatrix
    #vscode
    direnv
    terminator
    chromium
    discord
    nvtopPackages.full
    lshw
    thunderbird
    neovim
    emacs
    neofetch
    #btop
    pavucontrol
    arandr
    xfce.thunar
    xfce.tumbler
    mupdf
    spotify
    gcc
    ripgrep
    networkmanagerapplet
    grimblast
    obsidian
    qalculate-gtk
    git
    python311           # Python 3.11
    python311Packages.python-lsp-server
    python311Packages.black  # Formatador de código Black
    python311Packages.pyflakes  # Linter Pyflakes
    python311Packages.flake8  # Linter Flake8
    python311Packages.pip  # Gerenciador de pacotes pip
    python311Packages.virtualenv  
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    #autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
