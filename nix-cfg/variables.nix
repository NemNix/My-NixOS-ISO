{ lib, ... }: {
  options = { var = lib.mkOption { type = lib.types.attrs; default = { }; }; }; # Touchez pas

  config = {

    kernel = "latest"; # lts OU xanmod OU zen OU latest
    drivers.nvidia = "null"; # Desktop ou laptop

    # Definisser vos variables ici 
    var = {
      intelBusId = "";
      amdgpuBusId = "";
      nvidiaBusId = "";

      hostname = "nixy";
      username = "hadi";
    };
  };
}
