{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        clock = {
          format = "{:%a %d %b %H:%M}";
        };

        pulseaudio = {
          format = " {volume}%";
          format-muted = " Muted";
        };

        network = {
          format-wifi = " {essid}";
          format-ethernet = " {ifname}";
          format-disconnected = " Offline";
        };
      };
    };

   style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", monospace;
        font-size: 13px;
        color: #f5f5dc;
      }

      window#waybar {
        background-color: rgba(0, 0, 0, 0.3);
      }

    tooltip {
      border-radius: 4px;
      font-size:14px; color: #fbf1c7; background: rgba(40,40,40,1.0);
    }

      .module {
        padding: 0 10px;
        margin: 0 5px;
        background: transparent;
      }
      #tray * {font-size:14px; color: #fbf1c7; background: rgba(40,40,40,1.0);}
    '';
  };
}
