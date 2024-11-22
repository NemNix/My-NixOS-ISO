# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NE TOUCHEZ A RIEN
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
{ config, lib, options, ... }:
{
  options = {
    drivers.nvidia = lib.mkOption {
      type = lib.types.string;
    };
  };

  config = {
    services.xserver.videoDrivers =
      if options.drivers.nvidia == "laptop" then [ "nvidia" ]
      else if options.drivers.nvidia == "desktop" then [ "nvidia" ]
      else lib.mkDefault [ "modesetting" "fbdev" ];

    nixpkgs.config.nvidia.acceptLicense = if config.services.xserver.videoDrivers == [ "nvidia" ] then true else false;

    hardware = {

      nvidia = {
        package = if config.services.xserver.videoDrivers == [ "nvidia" ] then config.boot.kernelPackages.nvidiaPackages.beta else null;
        open = false;

        nvidiaSettings = if config.services.xserver.videoDrivers == [ "nvidia" ] then true else false;
        modesetting.enable = if config.services.xserver.videoDrivers == [ "nvidia" ] then true else false;
        dynamicBoost.enable = if config.services.xserver.videoDrivers == [ "nvidia" ] then true else false;

        powerManagement = {
          enable = if config.services.xserver.videoDrivers == [ "nvidia" ] then true else false;
        };

        prime = {
          sync.enable = if config.options.Activer.nvidia == "laptop" then true else false;

          intelBusId = config.var.intelBusId;
          amdgpuBusId = config.var.amdgpuBusId;
          nvidiaBusId = config.var.nvidiaBusId;
        };
      };
    };
  };
}
