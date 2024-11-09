{ config, ... }:
{
  boot.kernelParams =
    if config.boot.kernelModules == [ "kvm-intel" ] then
      [
        "mitigations=off"
        "kernel.split_lock_mitigate=0"
      ]
    else
      [
        "mitigations=off"
        "amd_pstate=active"
      ];
}
