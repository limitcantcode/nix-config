{
  programs.zen-browser.profiles.default = {
    containersForce = true; # Delete containers not declared here
    containers = {
      Personal = {
        color = "turquoise";
        icon = "tree";
        id = 1;
      };
      LCC = {
        color = "blue";
        icon = "chill";
        id = 2;
      };
    };
  };
}