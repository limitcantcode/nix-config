{
  programs.git.enable = true;
  programs.git = {
    config = {
      user = {
        name = "limitcantcode";
	    email = "limitcantcode@gmail.com";
      };
      core.editor = "nvim";
    };
    lfs.enable = true;
  };
}