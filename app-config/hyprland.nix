{ config, pkgs, ... }:

let
  wallpaper = "${config.home.homeDirectory}/nixos/wallpaper.jpg";
in {
  home.packages = with pkgs; [
    kitty
    rofi
    grim
    slurp
    hyprpaper
    wl-clipboard
    networkmanagerapplet
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [ ",preferred,auto,1" ];

      input = {
        kb_layout = "us";
        kb_variant = "intl";
        follow_mouse = 1;
        touchpad.natural_scroll = true;
      };

      "$mod" = "SUPER";

      bind = [
        "$mod, RETURN, exec, ghostty"
        "$mod, Q, killactive"
        "$mod, M, exit"
        "$mod, E, exec, thunar"
        "$mod, D, exec, rofi -show drun -show-icons"
        "$mod, F, togglefloating"
        "$mod, SPACE, togglefloating"
        "$mod, V, exec, code"
        "$mod, H, movefocus, l"
        "$mod, L, movefocus, r"
        "$mod, K, movefocus, u"
        "$mod, J, movefocus, d"
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, L, movewindow, r"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, F, fullscreen, 1"
        ",Print, exec, grim -g \"$(slurp)\" - | wl-copy"
      ];

      general = {
        gaps_in = 2;
        gaps_out = 2;
        border_size = 1;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
          size = 5;
          passes = 3;
        };
      };

      animations = {
        enabled = true;
        bezier = "myBezier, 0.13, 0.99, 0.29, 1.1";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      exec-once = [
        "waybar"
        "hyprpaper"
        "nm-applet"
      ];
    };
  };

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ${wallpaper}
    wallpaper = ,${wallpaper}
  '';
}