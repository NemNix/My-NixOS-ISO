{
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # NE TOUCHEZ A RIEN
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  imports = [
    ./hardware-configuration.nix
    ./glf
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  system.autoUpgrade = { enable = true; dates = "weekly"; };

  nixpkgs = { config = { allowUnfree = true; }; };

  nix = {
    optimise = {
      automatic = true;
      dates = [ "daily" ];
    };

    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
  };
}
