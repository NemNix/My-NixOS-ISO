{
  imports = [
    ./hardware-configuration.nix

    ./modules/nh.nix
    ./modules/boot.nix
    ./modules/time.nix
    ./modules/users.nix
    ./modules/gnome.nix
    ./modules/nvidia.nix
    ./modules/fstrim.nix
    ./modules/gaming.nix
    ./modules/montage.nix
    ./modules/xserver.nix
    ./modules/pipewire.nix
    ./modules/configuration.nix
  ];
}
