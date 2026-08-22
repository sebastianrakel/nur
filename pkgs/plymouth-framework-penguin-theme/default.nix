{
  stdenvNoCC,
  fetchFromGitHub,
  lib,
  unstableGitUpdater,
}:

stdenvNoCC.mkDerivation {
  pname = "plymouth-framework-penguin-theme";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "sebastianrakel";
    repo = "framework-penguin";
    rev = "ebe3f38af5d41e2d8cbaa9f6a3ca5c1dde76b807";
    hash = "sha256-BxAQlSqFmMifcv++VVaP/4R10Z/i8ZIferGehbDr8b0=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/plymouth/themes/framework-penguin
    cp * $out/share/plymouth/themes/framework-penguin
    substituteInPlace $out/share/plymouth/themes/framework-penguin/framework-penguin.plymouth \
      --replace-fail "/usr/" "$out/"
    runHook postInstall
  '';

  passthru.updateScript = unstableGitUpdater { };

  meta = {
    description = "Plymouth Framework Penguin boot theme";
    longDescription = "";
    homepage = "https://github.com/ygurin/framework-penguin";
    license = lib.licenses.gpl3;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [ johnrtitor ];
  };
}
