{
  programs = {
    firefox = {
      enable = true;
      wrapperConfig = {
        pipewireSupport = true;
      };
      languagePacks = [ "fr" "en-US" ];
      policies = {
        DisableTelemetry = true;
        Extensions = {
          Install = [
            "uBlock0@raymondhill.net"
            "magnolia@12.34"
          ];
        };
        ExtensionSettings = {
          "uBlock0@raymondhill.net" = {
            installation_mode = "force_installed";
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          };
          ExtensionUpdate = true;
        };
      };
      preferences = {
        "intl.accept_languages" = "fr-fr,en-us,en";
        "intl.locale.requested" = "fr,en-US";
      };
    };
  };

}
