{
  programs._1password.enable = true;
  programs._1password-gui.enable = true;

  environment.etc."1password/custom_allowed_browsers" = {
    text = ''
      .zen-wrapped
    ''; # or just "zen" if you use unwrapped package
    mode = "0755";
  };
}