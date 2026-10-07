{ pkgs, ... }:

{
  imports = [
    ./bash
    ./neovim
    ./git
    ./tmux

    ./greetd
    ./regreet
    ./gdm
    ./gnome
    #./stylix # needs work
    ./niri
    ./quickshell

    ./cups
    ./pulseaudio
    ./pipewire
    ./libinput
    ./openssh

    ./1password

    ./steam
    ./code-cursor
    ./discord
  ];

  environment.systemPackages = with pkgs; [
    gnumake
    wget
    zip
    unzip
    uv
    glow
    nnn
    btop
    iotop
    iftop
    strace
    ltrace
    hyfetch
  ];
}
