{ self, lib, inputs, ... }: {
  perSystem = { pkgs, ... }: {
    packages = import ./. { inherit pkgs; };
  };
  flake.overlays = rec {
    pkgs = final: prev: import ./. { pkgs = final; };
    default = lib.composeManyExtensions [ pkgs ];
  };
}
