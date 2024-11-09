{ lib, ... }: {
  options = { var = lib.mkOption { type = lib.types.attrs; default = { }; }; }; # Touchez pas

  config = {
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Vos Configurations
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    kernel = "latest"; # lts OU xanmod OU zen OU latest
    drivers.nvidia = "null"; # Desktop ou laptop

    var = {
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
