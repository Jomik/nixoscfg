{ config, pkgs, ... }:

{
  imports = [
    # Import our synaptics driver configuration.
    ./synaptics.nix
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "intel" "vesa" ];
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "compose:caps";

  # services.xserver.windowManager.xmonad.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.kde5.enable = true;
}
