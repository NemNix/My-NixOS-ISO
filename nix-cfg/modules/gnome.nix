{ pkgs, ... }:
{
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Activation de Gnome
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Paquets system
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  environment.systemPackages = with pkgs.gnomeExtensions; [
    caffeine
    gsconnect
    appindicator
    dash-to-dock
  ];

  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Paquets exclues de l'instalation de gnome
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  environment.gnome.excludePackages = with pkgs; [
    gnome.gnome-music
    gnome-tour
    gnome-photos
    gnome.gnome-weather
    gnome.totem
    gnome.tali
    gnome.iagno
    gnome.hitori
    gnome.atomix
    gnome.simple-scan
    gnome.yelp
    gnome.gnome-maps
    gnome.gnome-clocks
    gnome-connections
    gnome.geary
    xterm
    gnome-user-docs
    gnome.gnome-calculator
    gnome.cheese
    epiphany
    gnome.gnome-packagekit
    packagekit
    system-config-printer
    gnome-tour
  ];
}
