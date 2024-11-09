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

  services.ananicy = {
    enable = true;
    package = pkgs.ananicy-cpp;
    rulesProvider = pkgs.ananicy-rules-cachyos;
  };

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      gamescopeSession.enable = true;
      localNetworkGameTransfers.openFirewall = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };

    gamemode = {
      enable = false;
      enableRenice = false;
      settings = { };
    };

    gamescope = {
      enable = false;
      args = [
        "-w 1920 -h 1080"
        "-F nis"
        "f"
      ];
    };
  };
}
