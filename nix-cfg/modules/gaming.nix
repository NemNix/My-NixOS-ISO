{ pkgs, config, ... }:
let
  username = config.var.username;
in
{
  users.users.${username}.packages = with pkgs; [
    heroic
    lutris
    goverlay
    mangohud
  ];

  hardware.steam-hardware.enable = true;

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      gamescopeSession.enable = true;
      localNetworkGameTransfers.openFirewall = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };
  };
}
