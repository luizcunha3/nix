{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		google-chrome
	];
}
