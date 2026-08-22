{
  lib,
  stdenv,
  fetchFromGitHub,
  pkg-config,
  alsa-lib,
  libftdi,
  libsndfile,
  libmad,
  pkgs,
}:

stdenv.mkDerivation rec {
  pname = "qlcplus";
  version = "5.2.2";

  src = fetchFromGitHub {
    owner = "mcallegari";
    repo = "qlcplus";
    rev = "QLC+_${version}";
    hash = "sha256-e8KyuCnzTUz/f6cfT7LyUQ9snaFBnE5WTc4FP7jhdRY=";
  };

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
    qt5.wrapQtAppsHook
  ];

  buildInputs = with pkgs; [
    qt5.qtbase
    qt5.qtmultimedia
    qt5.qtscript
    qt5.qttools
    qt5.qtdeclarative
    qt5.qtsvg
    qt5.qtserialport
    qt5.qtwebsockets

    # system/libs
    pkgs.flac
    alsa-lib
    libusb1
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
  ];

  cmakeFlags = [
    "-Wno-dev"
    "INSTALLROOT=$(out)"
    "-DCMAKE_PREFIX_PATH=/usr/lib/x86_64-linux-gnu/cmake/Qt5"
  ];

  enableParallelBuilding = true;

  doInstallCheck = true;

  postInstall = ''
    ln -sf $out/lib/*/libqlcplus* $out/lib
  '';

  meta = {
    description = "Free and cross-platform software to control DMX or analog lighting systems like moving heads, dimmers, scanners etc";
    maintainers = [ ];
    license = lib.licenses.asl20;
    platforms = lib.platforms.all;
    homepage = "https://www.qlcplus.org/";
  };
}
