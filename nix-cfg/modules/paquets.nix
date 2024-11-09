{ pkgs, config, ... }:
let
  username = config.var.username;
in

{
  services.flatpak.enable = true;
  xdg.portal.enable = true;

  users.users.${username}.packages = with pkgs; [
    obs-studio
    kdenlive
    firefox-bin
    discord
    freetube
    thunderbird-latest
    gimp
    inkscape
    libreoffice-bin
  ];
} 
