{ bundlerApp, bundlerUpdateScript, lib, testers, }:

bundlerApp {
  pname = "puppet-editor-services";
  gemdir = ./.;
  exes = [ "puppet-languageserver" "puppet-languageserver-sidecar" ];

  passthru = { updateScript = bundlerUpdateScript "puppet-editor-services"; };

  meta = {
    description = "Puppet Language Server";
    homepage = "https://github.com/puppetlabs/puppet-editor-services";
    changelog =
      "https://github.com/puppetlabs/puppet-editor-services/blob/main/CHANGELOG.md";
    license = lib.licenses.asl20;
    mainProgram = "puppet-languageserver";
  };
}
