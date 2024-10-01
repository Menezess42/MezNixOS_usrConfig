{config, pkgs, lib,...}:
{
  options = {
    zsh.enable = lib.mkEnableOption "Enable zsh config";
  };
  config = lib.mkIf config.zsh.enable{
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
      defaultKeymap = "viins";
      history = {
        size = 10000;
        path = "${config.xdg.dataHome}/zsh/history";
      };
      autocd = true;
      shellAliases = {
        ll = "exa --icons";
        ".." = "cd ..";
        "cls" = "clear";
        "d" = "/mnt/hdmenezess42/";
        "la" = "exa --icons -a";
      };
      zplug={
        enable = true;
        plugins = [
          {name = "romkatv/powerlevel10k"; tags = [as:theme];}
        ];
      };
      #source ~/.p10k.zsh
      initExtra = ''
      source ${./.p10k.zsh}
      eval "$(direnv hook zsh)"
    '';
    };
  };
}
