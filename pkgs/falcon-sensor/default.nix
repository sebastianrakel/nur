{ pkgs, ... }:
let
  falcon-sensor = pkgs.callPackage ./falcon-sensor.nix { };
  startPreScript = pkgs.writeScript "init-falcon" ''
    #! ${pkgs.bash}/bin/sh
    /run/current-system/sw/bin/mkdir -p /opt/CrowdStrike
    /run/current-system/sw/bin/touch /var/log/falconctl.log
    ln -sf ${falcon-sensor}/opt/CrowdStrike/* /opt/CrowdStrike
    ${falcon-sensor}/bin/fs-bash -c "${falcon-sensor}/opt/CrowdStrike/falconctl -g --cid"
  '';
in
{
  systemd.services.falcon-sensor = {
    enable = true;
    description = "CrowdStrike Falcon Sensor";
    unitConfig.DefaultDependencies = false;
    after = [ "local-fs.target" ];
    conflicts = [ "shutdown.target" ];
    before = [ "sysinit.target" "shutdown.target" ];
    serviceConfig = {
      ExecStartPre = "${startPreScript}";
      ExecStart = "${falcon-sensor}/bin/fs-bash -c \"${falcon-sensor}/opt/CrowdStrike/falcond\"";
      Type = "forking";
      PIDFile = "/run/falcond.pid";
      Restart = "no";
      TimeoutStopSec = "60s";
      KillMode = "process";
    };
    wantedBy = [ "multi-user.target" ];
  };
}
