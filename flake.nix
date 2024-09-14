{
  description = "Declarative Helix editor themes for home-manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [
              nil
              nixpkgs-fmt
            ];
          };

          formatter = pkgs.nixpkgs-fmt;
        }) // rec
    {
      gruvbox_material_dark_medium = import ./themes/gruvbox_material_dark_medium.nix;
      kanabox_default = import ./themes/kanabox_default.nix;
      urban_owl = import ./themes/urban_owl.nix;
      oxocarbon = import ./themes/oxocarbon.nix;

      themes = {
        inherit
          gruvbox_material_dark_medium
          kanabox_default
          urban_owl
          oxocarbon;
      };
    };
}
