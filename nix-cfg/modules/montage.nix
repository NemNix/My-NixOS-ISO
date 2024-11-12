{ config, lib, pkgs, ... }:
{
  options = {
    montage-video = lib.mkOption {
      type = lib.types.bool;
    };
  };
  config = {
    environment.systemPackages =
      if config.montage-video == true then with pkgs;
      [
        obs-studio
        kdenlive
        gimp
        inkscape
      ]
      else [ ];
  };
}
