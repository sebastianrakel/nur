{
  appimageTools,
  fetchurl,
  pkgs,
}:
let
  pname = "qlcplus";
  version = "5.2.2";

  src = fetchurl {
    url = "https://www.qlcplus.org/downloads/5.2.2/QLC+_5.2.2_x86_64.AppImage";
    hash = "sha256-Lg3syVgEKRCBhClwOFHVHzg04ACv19khoUopl2wJUyc=";
  };
in
appimageTools.wrapType2 {
  inherit pname version src;

  extraPkgs =
    pkgs: with pkgs; [
      flac
      alsa-lib
      libusb1
      libftdi1
      libftdi
      systemd # libudev
      libmad
      libsndfile
      fftw
      libxml2
      glib
      libpulseaudio
      libxkbcommon
      libogg
      libvorbis
      opus
      mpg123
      zstd
      xorg.libX11
      xorg.libXcursor
      xorg.libXi
      xorg.libxcb
      libxcb-cursor
    ];
}
