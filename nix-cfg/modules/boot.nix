{ pkgs, config, lib, ... }:
{

  boot = {
    tmp.cleanOnBoot = true;

    loader = {
      timeout = 3;
      efi.canTouchEfiVariables = true;

      grub = {
        enable = true;
        efiSupport = true;
        useOSProber = true;
        configurationLimit = 10;
      };
    };

    options = {
      kernel = lib.mkOption {
        type = lib.types.string;
        default = "null";
      };
    };

    config = {
      kernelPackages =
        if config.options.kernel == "zen" then pkgs.linuxPackages_zen
        else if config.options.kernel == "lts" then pkgs.linuxPackages
        else if config.options.kernel == "xanmod" then pkgs.linuxPackages_xanmod_latest
        else pkgs.linuxPackages_latest;
    };
  };
}
