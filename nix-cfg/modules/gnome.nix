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
  # Packages système
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  environment.systemPackages = [
    pkgs.gnome.gnome-tweaks
    pkgs.gnomeExtensions.caffeine
    pkgs.gnomeExtensions.gsconnect
    pkgs.gnomeExtensions.appindicator
    pkgs.gnomeExtensions.dash-to-dock
  ];

  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Paquets exclus de l'installation de GNOME
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
