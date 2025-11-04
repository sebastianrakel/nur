{ bundlerApp, bundlerUpdateScript, lib, testers, }:

bundlerApp {
  pname = "openvox";
  gemdir = ./.;
  exes = [ "puppet" ];

  passthru = { updateScript = bundlerUpdateScript "openvox"; };

  meta = {
    description = "Server automation framework and application";
    homepage = "https://github.com/openvoxproject/openvox";
    changelog =
      "https://github.com/openvoxproject/openvox/blob/main/CHANGELOG.md";
    license = lib.licenses.asl20;
    mainProgram = "puppet";
  };
}
