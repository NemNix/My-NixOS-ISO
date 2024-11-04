{
  imports = [
    ./hardware-configuration.nix

    ./modules/nh.nix
    ./modules/cpu.nix
    ./modules/boot.nix
    ./modules/time.nix
    ./modules/users.nix
    ./modules/gnome.nix
    ./modules/nvidia.nix
    ./modules/fstrim.nix
    ./modules/gaming.nix
    ./modules/network.nix
    ./modules/xserver.nix
    ./modules/security.nix
    ./modules/pipewire.nix
    ./modules/bluetooth.nix
    ./modules/configuration.nix
  ];
}
