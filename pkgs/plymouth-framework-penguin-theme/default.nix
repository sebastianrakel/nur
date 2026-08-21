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
    owner = "ygurin";
    repo = "framework-penguin";
    rev = "9ec7aa533d43ea8ebbc5ac56c00348f0ce52f172";
    hash = "sha256-Es8/OUb+Wr7VxdQTtR+IwwJbLaWNmeeOkeZjjcT/e0o=";
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
