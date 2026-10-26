{
  description = "Main Robotic Šlave (MRŠ)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    areofyl-fetch.url = "github:areofyl/fetch";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations.rabotnik = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./hosts/rabotnik/configuration.nix

        home-manager.nixosModules.home-manager

        {
		  home-manager.useGlobalPkgs = true;
		  home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {
          	inherit inputs;
          };
          
          home-manager.users.coddo = import ./home/coddo.nix;
        }
      ];
    };
  };
}
