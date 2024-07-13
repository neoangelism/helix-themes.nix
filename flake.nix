{
  description = "Declarative Helix editor themes for home-manager";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        kanabox_default = import ./themes/kanabox_default.nix;
        gruvbox_material_dark_medium = import ./themes/gruvbox_material_dark_medium.nix;
      in
      rec {
        inherit
          kanabox_default
          gruvbox_material_dark_medium;

        themes = {
          inherit
            kanabox_default
            gruvbox_material_dark_medium;
        };

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nil
            nixpkgs-fmt
          ];
        };

        formatter = pkgs.nixpkgs-fmt;
      });
}
