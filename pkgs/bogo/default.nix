{ lib, pkgs }:
pkgs.buildGoModule rec {
  pname = "bogo";
  version = "0.1.1";

  src = pkgs.fetchFromGitHub {
    owner = "sebastianrakel";
    repo = "bogo";
    rev = "v${version}";
    hash = "sha256-mi50EyBf8yR0CNIok05+UnTxk4fVbSBd4oogc7a2gHE=";
  };

  vendorHash = "sha256-3vSErgPoHjbIsOJ0SB8uU05zQrcMsQfr2v88pbDxZwY=";

  meta = { mainProgram = "bogo"; };
}
