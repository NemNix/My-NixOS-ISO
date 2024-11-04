{ config, ... }:
{
  boot.kernelParams =
    if config.hardware.cpu.intel.updateMicrocode == config.hardware.enableRedistributableFirmware then [ "mitigations=off" ]
    else [ "mitigations=off" "amd_pstate=active" ];

}
