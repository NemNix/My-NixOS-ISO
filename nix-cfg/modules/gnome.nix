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
    pkgs.vlc-bin
    pkgs.gnome.gnome-tweaks

    # Extension
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
    gnome.yelp
    gnome.geary
    xterm
    gnome-user-docs
    epiphany
    gnome.gnome-packagekit
    packagekit
    gnome-tour
  ];

  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Paramètre GNOME
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  dconf.settings = {

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      focus-mode = "click";
      visual-bell = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      click-method = "areas";
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };
  };
}
