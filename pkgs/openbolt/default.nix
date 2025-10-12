{ bundlerApp, defaultGemConfig, bundlerUpdateScript, lib, makeWrapper, testers,
}:

(bundlerApp {
  pname = "openbolt";

  gemdir = ./.;
  exes = [ "bolt" ];
  nativeBuildInputs = [ makeWrapper ];

  gemConfig = defaultGemConfig // {
    openbolt = attrs: {
      # scripts in libexec will be executed by remote host,
      # so shebangs should remain unchanged
      dontPatchShebangs = true;
    };
  };

  postBuild = ''
    # Set BOLT_GEM=1 to remove warning
    wrapProgram $out/bin/bolt --set BOLT_GEM 1
  '';

  passthru = { updateScript = bundlerUpdateScript "openbolt"; };

  meta = {
    description = "Execute commands remotely over SSH and WinRM";
    homepage = "https://github.com/OpenVoxProject/openbolt";
    changelog =
      "https://github.com/OpenVoxProject/openbolt/blob/main/CHANGELOG.md";
    license = lib.licenses.asl20;
    mainProgram = "bolt";
    maintainers = with lib.maintainers; [ sebastianrakel ];
    platforms = lib.platforms.unix;
  };
}).overrideAttrs
(old: { name = "openbolt-${(import ./gemset.nix).openbolt.version}"; })
