{ lib, ... }: {
  options = { var = lib.mkOption { type = lib.types.attrs; default = { }; }; }; # Touchez pas

  config = {
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Vos configurations
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    kernel = "latest"; # lts, xanmod, zen, latest
    drivers.nvidia = "null"; # desktop, laptop
    montage-video = false; # true ou false

    var = {
      # UNIQUEMENT LAPTOP : RENSEIGNER VOS PCI : https://nixos.wiki/wiki/Nvidia
      intelBusId = "";
      amdgpuBusId = "";
      nvidiaBusId = "";

      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Vos Variables
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      hostname = "nixy";
      username = "hadi";
    };
  };
}
