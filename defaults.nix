{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
    ./git.nix
    ./chrome.nix
    ./vscode.nix
  ];
}
