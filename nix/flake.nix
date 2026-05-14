# sudo nixos-rebuild switch --flake .#my-nixos
{
    inputs = {
        nixpkgs.url = "github:Nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, ... }@inputs: {
        nixosConfigurations.my-nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };
            modules = [
                ./configuration.nix
            ];
        };
    };
}
