{
  programs.zen-browser = {
    setAsDefaultBrowser = true;

    profiles.default = {

      presets = {
        # Catppuccin theme (catppuccin/zen-browser), symlinked into the profile's
        # chrome/catppuccin and loaded via userChrome/userContent imports.
        catppuccin = {
          enable = true;
          flavor = "Mocha"; # Frappe | Latte | Macchiato | Mocha
          accent = "Blue"; # Blue, Flamingo, Green, Lavender, Maroon, Mauve, ...
        };
        # Betterfox for Zen (yokoffing/Betterfox zen/user.js, aka BetterZen):
        # privacy/telemetry/performance prefs applied as mkDefault settings —
        # any profile `settings` entry wins.
        betterfox.enable = true;

        # arkenfox for Zen (arkenfox/user.js)
        arkenfox.enable = true;
      };

      settings = {
        "zen.workspaces.continue-where-left-off" = true;
        "zen.view.sidebar-expanded" = true;
        "zenview.window.scheme" = 0;
        "zen.urlbar.behavior" = "float";
        "zen.welcome-screen.seen" = true;
        "intl.locale.requested" = "en-US";
      };

      mods = [
        "e122b5d9-d385-4bf8-9971-e137809097d0" # No Top Sites
        "253a3a74-0cc4-47b7-8b82-996a64f030d5" # Floating History
        "4ab93b88-151c-451b-a1b7-a1e0e28fa7f8" # No Sidebar Scrollbar
        "7190e4e9-bead-4b40-8f57-95d852ddc941" # Tab title fixes
        "803c7895-b39b-458e-84f8-a521f4d7a064" # Hide Inactive Workspaces
        "906c6915-5677-48ff-9bfc-096a02a72379" # Floating Status Bar
      ];
    };

    policies = {
      AutofillAddressEnabled = true;
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = false;
      OfferToSaveLogins = false;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
    };
  };
}