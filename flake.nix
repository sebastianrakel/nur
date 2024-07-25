{
  description = "my nur packages";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
  };

  outputs = { flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } ( { lib, ... }: {
      systems = lib.systems.flakeExposed;
      imports = [ ./pkgs/flake-module.nix ];
    });
}