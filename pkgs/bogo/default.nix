{ lib, pkgs }:
pkgs.buildGoModule rec {
  pname = "bogo";
  version = "0.1.0";

  src = pkgs.fetchFromGitHub {
    owner = "sebastianrakel";
    repo = "bogo";
    rev = "v${version}";
    hash = "sha256-J16mh2pFtcGfs9XKeLjKse+gbOqjeYQksCHkezOWKNE=";
  };

  vendorHash = "sha256-thErQmWA1HPVEFsWQtvqmzHvAWRKN6m4H/bGHoLAKNw=";

  meta = {
    mainProgram = "bogo";
  };
}
