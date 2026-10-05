{
  programs.bash.enable = true;
  programs.bash = {
    completion.enable = true;
#    bashrcExtra = ''
#     # .bashrc contents go here. only available in home-manager
#    '';
    shellAliases = {
      nr = "nixos-rebuild";
      hm = "home-manager";
    };
#    settings = {
#      undistractMe = {
#        enable = true;
#        playSound = true;
#      };
#    };
  };
}