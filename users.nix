{ config, pkgs, ... }:

{
  users = {
    environment.systemPackages = with pkgs; [ fish ];
    defaultUserShell = "/run/current-system/sw/bin/fish"

    extraUsers.jomik = {
      isNormalUser = true;
      description = "Jonas Damtoft";
      extraGroups = [ "wheel" ];
    };
  };
}
