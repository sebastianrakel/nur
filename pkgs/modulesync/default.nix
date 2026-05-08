{ bundlerApp, bundlerUpdateScript, lib, }:

bundlerApp {
  pname = "modulesync";
  gemdir = ./.;
  exes = [ "msync" ];

  passthru = { updateScript = bundlerUpdateScript "modulesync"; };

  meta = {
    description = "Voxpupuli ModuleSync";
    homepage = "https://github.com/voxpupuli/modulesync";
    changelog =
      "https://github.com/voxpupuli/modulesync/blob/master/CHANGELOG.md";
    license = lib.licenses.asl20;
    mainProgram = "msync";
  };
}
