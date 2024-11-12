{ pkgs, config, ... }:
let
  username = config.var.username;
in
{
  services.flatpak.enable = true;

  users.users.${username}.packages = with pkgs; [

    # APP
    firefox-bin
    thunderbird-latest

    discord
    freetube

    # Bureautique
    libreoffice-bin

  ];
} 
