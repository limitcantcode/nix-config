{
  description = "Limit's personal flake";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-26.05";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, stylix, niri, quickshell, zen-browser, ... }@inputs: {
    nixosConfigurations = {
      limit-nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hardware-configuration.nix
          ./configuration.nix
          home-manager.nixosModules.home-manager {
            home-manager.extraSpecialArgs = {inherit inputs;};
            home-manager.users.limit = import ./home.nix;
          }
        ];
      };
    };
  };
}
