{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./xserver.nix
    ./users.nix
  ];
  
  time.timeZone = "Europe/Copenhagen";
}
