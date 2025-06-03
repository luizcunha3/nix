{ config, pkgs, ... }:

let
  cursorTheme = "Bibata-Modern-Ice";
  cursorSize = 24;
in
{
  home.pointerCursor = {
    name = cursorTheme;
    size = cursorSize;
    package = pkgs.bibata-cursors;
    gtk.enable = true;
    x11.enable = true;
  };

  xdg.configFile."hypr/hyprland.conf".text = ''
    # outras configs do Hyprland...

    env = XCURSOR_THEME,${cursorTheme}
    env = XCURSOR_SIZE,${toString cursorSize}
  '';
}
