{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "powerlevel10k/powerlevel10k";
      custom = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k";
    };
  };

  home.packages = [
    pkgs.zsh-powerlevel10k
  ];
}