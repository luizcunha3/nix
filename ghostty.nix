{ config, pkgs, ... }:
{
   environment.systemPackages = [
    pkgs.ghostty
  ];
  environment.variables = {
    TERMINAL = "ghostty";
  };
}
