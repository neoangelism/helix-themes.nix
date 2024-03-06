{
  description = "Declarative Helix editor themes for home-manager";

  outputs = { self }: let 
    kanabox_default = import ./themes/kanabox_default.nix;
    gruvbox_material_dark_medium = import ./themes/gruvbox_material_dark_medium.nix;
  in rec {
    inherit
      kanabox_default
      gruvbox_material_dark_medium;

    themes = {
      inherit
        kanabox_default
        gruvbox_material_dark_medium;
    };
  };
}
