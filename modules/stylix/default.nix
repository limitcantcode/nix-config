{ inputs, pkgs, ... }:

{
    imports = [ inputs.stylix.nixosModules.stylix ];
    #environment.systemPackages = [ pkgs.stylix ] # Disabled for now
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark.yaml"; # temp
}
