{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    gh
  ];
  
  programs.git = {
    enable = true;
    config = {
      user.name = "Luiz";
      user.email = "luizcunha3@gmail.com";
      init.defaultBranch = "main";
    };
  };
}
