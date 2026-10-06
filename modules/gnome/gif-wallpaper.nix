{ pkgs, ... }:

let
  extension = pkgs.gnomeExtensions.gnome-wallpaper-engine;
in
{
  home.packages = [ extension ];

  home.file.".local/share/gnome-wallpaper-engine/backgrounds/wallpaper.webm".source =
    ./wallpaper.webm;
  home.file.".local/share/gnome-wallpaper-engine/backgrounds/wallpaper-thumb.jpg".source =
    ./wallpaper-thumb.jpg;

  dconf.enable = true;

  programs.gnome-shell = {
    enable = true;
    extensions = [ { package = extension; } ];
  };

  dconf.settings."org/gnome/shell/extensions/gnome-wallpaper-engine" = {
    autostart = true;
    current-wallpaper = "wallpaper.webm";
    pause-on-fullscreen = false;
    pause-on-battery = false;
  };
}
