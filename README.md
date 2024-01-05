# Declarative Helix Editor Themes

Nix Home-manager options for the helix editor has an attribute for themes that expects an attribute set of attributes written as TOML values: https://mynixos.com/home-manager/option/programs.helix.themes.
This can get really hairy if you are trying to actually use this attribute to declare your custom themes.

The goal is to eventually add a script that will convert your existing custom theme from TOML to a Nix-TOML expression, placing it within the flake.

The themes already available can be used by importing the flake, and assigning the Home-manager Helix themes options.

> NOTE: This assumes you are using a flake to manage your dotfiles. I've also tried to keep this as minimal as possible.

In your `flake.nix`:
```nix
# for me this is at ~/.config/dotfiles/flake.nix
{
  inputs {
    # ...links for nixpkgs & home-manager, etc.
    helix-themes.url = "github:eureka-cpu/helix-themes.nix";
  };
  
  outputs = { nixpkgs, home-manager, ... } @inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      # default host name is nixos
      YOUR_HOST_NAME = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useUserPackages = true;
              useGlobalPkgs = true;
              extraSpecialArgs = { inherit inputs; };
              # don't forget to add your user
              users.YOUR_USERNAME = ./home-manager/home.nix;
            };
          }
        ];
      };
    };
  };
}
```
In your `home.nix`:
```nix
# for me this is at ~/.config/dotfiles/home-manager/home.nix
{ pkgs, inputs, ... }:
  # ...
  home.packages = with pkgs; [
    helix
  ];
  programs.helix = {
    enable = true;
    settings = {
      theme = "your_custom_theme_name";
    };
    themes = inputs.helix-themes.outputs.themes;
  };
  # ...
```

The `programs.helix.themes` attribute puts the themes in the `~/.config/helix/themes` folder, and in order for it to work
you'll need to remove the old Helix config folder at that path so Home-manager can place the files.

If you're adding a theme using this flake, feel free to open a pull request for it. To test that the theme is built
properly, check that the theme file appears in `~/.config/helix/themes`.
