{ appimageTools, fetchurl, pkgs }:
let
  pname = "bambu-studio";
  version = "2.2.0";

  src = fetchurl {
    url =
      "https://github.com/bambulab/BambuStudio/releases/download/v02.04.00.70/Bambu_Studio_ubuntu-24.04_PR-8834.AppImage";
    hash = "sha256-JrwH3MsE3y5GKx4Do3ZlCSAcRuJzEqFYRPb11/3x3r0=";
  };
in appimageTools.wrapType2 {
  inherit pname version src;

  extraPkgs = pkgs:
    with pkgs; [
      webkitgtk_4_1
      curl
      cacert
      glib-networking
      gst_all_1.gstreamer
      gst_all_1.gst-plugins-base
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-good
    ];

  profile = ''
    export SSL_CERT_FILE="${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
    export GIO_MODULE_DIR="${pkgs.glib-networking}/lib/gio/modules/"
  '';
}
