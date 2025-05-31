{ config, pkgs, ... }:

{
  imports = [
    ./home-manager.nix
    ./zsh.nix
    ./git.nix
    ./chrome.nix
    ./vscode.nix
    ./oh-my-zsh.nix
  ];
}
