{ config, pkgs, ... }:

{
  imports = [
    ./graphics.nix
    ./fonts.nix
    ./hyprland.nix
    ./home-manager.nix
    ./zsh.nix
    ./ghostty.nix
    ./git.nix
    ./chrome.nix
    ./vscode.nix
    ./oh-my-zsh.nix
    ./steam.nix
    ./qbittorrent.nix
    ./spotify.nix
    ./vlc.nix
    ./obsidian.nix
  ];

    services.xserver = {
    layout = "us";
    xkbVariant = "intl";   # para o US International com dead keys
  };

 



}
