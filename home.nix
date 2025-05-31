{ config, pkgs, ... }:

{
  home.stateVersion = "25.05";
  home.username = "luizcunha";
  home.homeDirectory = "/home/luizcunha";

  programs.zsh.enable = true;
}
