{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "compose:caps";

  services.xserver.vaapiDrivers = [ pkgs. vaapiIntel ];

  services.xserver.displayManager = {
    sddm.enable = true;
    sessionCommands = ''
      xsetroot -cursor_name left_ptr &
    '';
  };
  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
  };
  environment.systemPackages = with pkgs; [
    dmenu2
    haskellPackages.xmobar
  ];
}
