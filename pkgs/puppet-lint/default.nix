{ bundlerApp, bundlerUpdateScript, lib, }:

bundlerApp {
  pname = "puppet-lint";
  gemdir = ./.;
  exes = [ "puppet-lint" ];

  passthru = { updateScript = bundlerUpdateScript "puppet-lint"; };

  meta = {
    description = "Checks Puppet code against the recommended Puppet language style guide";
    homepage = "https://github.com/puppetlabs/puppet-lint";
    changelog = "https://github.com/puppetlabs/puppet-lint/blob/main/CHANGELOG.md";
    license = lib.licenses.mit;
    mainProgram = "puppet-lint";
  };
}
