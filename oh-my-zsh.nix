{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    zsh-powerlevel10k
  ];

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    zsh-autoenv.enable = true;

    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";  # Manter tema padrão pois vamos carregar powerlevel10k manualmente
      plugins = [
        "git"
        "npm"
        "history"
        "node"
        "rust"
        "deno"
      ];
    };

    shellInit = ''
      # Carrega o tema powerlevel10k instalado pelo Nix
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    '';
  };
}
