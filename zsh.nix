{ config, pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.luizcunha = {
    shell = pkgs.zsh;
  };
}