{ config, pkgs, ... }:

{
  users.extraUsers.jomik = {
    isNormalUser = true;
    description = "Jonas Damtoft";
    extraGroups = [ "wheel" ];
  };
}
