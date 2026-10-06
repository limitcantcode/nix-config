{ pkgs, ... }:

{
  services.desktopManager.gnome.enable = true;
  programs.dconf.enable = true;

  # gnome-shell subprocesses need these on PATH when the extension starts mpv/ffmpeg
  environment.systemPackages = with pkgs; [
    mpv
    ffmpeg
  ];

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
      };
    }
  ];
}
