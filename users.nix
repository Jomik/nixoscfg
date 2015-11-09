{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ fish ];
  users = {
    defaultUserShell = "/run/current-system/sw/bin/fish";

    extraUsers.jomik = {
      isNormalUser = true;
      description = "Jonas Damtoft";
      extraGroups = [ "wheel" ];
    };
  };
}
