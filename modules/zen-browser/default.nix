{ inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    ./settings.nix
    ./bookmarks.nix
    ./containers.nix
  ];

  programs.zen-browser.enable = true;
}