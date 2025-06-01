{ config, pkgs, ... }:

{
  imports = [
    ./app-config/hyprland.nix
    ./app-config/waybar.nix
  ];
  
  home.stateVersion = "25.05";
  home.username = "luizcunha";
  home.homeDirectory = "/home/luizcunha";

  programs.zsh.enable = true;

  home.packages = with pkgs; [
    ghostty
    jetbrains-mono
  ];

  home.file.".config/ghostty/config".text = ''
    font-family = "JetBrains Mono"
    font-size = 11
  '';
}
