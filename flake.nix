{
  description = "Tray's Server Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-25.04";
  };

  outputs =
    {
      nixpkgs,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        "lab" = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [ ./sys.nix ];
        };
      };
    };
}
