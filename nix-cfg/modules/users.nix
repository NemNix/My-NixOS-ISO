{ config, ... }:
let
  username = config.var.username;
in
{

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
