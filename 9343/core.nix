{ config, pkgs, ... };

{
  imports = [
    ./synaptics.nix
    ./sound.nix
  ];
  
  services.xserver.videoDrivers = [ "intel" "vesa" ];
}
