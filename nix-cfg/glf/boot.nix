{ pkgs, config, ... }:
{
  boot = {
    tmp.cleanOnBoot = true;
    kernelPackages = pkgs.linuxPackages; #linuxPackages_zen #linuxPackages #linuxPackages_latest #linuxPackages_xanmod_latest
    kernel.sysctl = { "vm.max_map_count" = 2147483642; };
    kernelParams = if config.boot.kernelModules == [ "kvm-amd" ] then [ "amd_pstate=active" ] else [ ];

    loader = {
      efi.canTouchEfiVariables = true;

      # grub = {
      #   enable = lib.mkForce true;
      #   efiSupport = true;
      #   useOSProber = true;
      #   configurationLimit = 10;
      # };
    };
  };
}
