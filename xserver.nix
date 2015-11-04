{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "compose:caps";

  services.xserver.displayManager.slim.enable = true;
  services.xserver.windowManager.xmonad.enable = true;
}
