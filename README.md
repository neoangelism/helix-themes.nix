# Declarative Helix Editor Themes for Home-Manager

Nix home-manager options for the Helix editor has an attribute for themes which expects an attribute set of attributes written as Nix-TOML values: https://mynixos.com/home-manager/option/programs.helix.themes.
This can get really hairy if you are trying to actually use this attribute to declare your custom themes.

## Goals
This project is probably better off being broken up into several pieces which would become more useful to others, but for now it's easier
for me to work on if I don't have to wait on reviews. The following are some long-term goals I'd like to meet until then.
- add a function that will convert your existing custom theme from TOML to a Nix-TOML attribute set, placing it within a `themes` directory which will then be available in the flake outputs.
- add `nix-colors` integration for better base16 themes than the ones provided in Helix by default.
- eventually convert this flake into a home-manager module at which point this repository will become public archive.

## Usage

The themes already available can be used by importing the flake, and assigning the home-manager Helix themes options.

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
    # for all themes
    themes = inputs.helix-themes.outputs.themes;
    # or for a single theme
    themes = { inputs.helix-themes.outputs.your_custom_theme_name; };
  };
  # ...
```

> IMPORTANT: The `programs.helix.themes` attribute puts the themes in the `~/.config/helix/themes` folder, and in order for it to work
> you'll need to remove the old Helix config folder at that path so home-manager can place the files. I recommend creating a copy of your
> custom themes before doing so to avoid losing them should something go wrong.

If you're adding a theme using this flake, feel free to open a pull request for it. To test that the theme is built
properly, check that the theme file appears in `~/.config/helix/themes`.
