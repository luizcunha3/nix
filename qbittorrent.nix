# /home/luizcunha/nixos/qbittorrent.nix
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    qbittorrent
  ];
}
