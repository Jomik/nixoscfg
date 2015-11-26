{ config, pkgs, ... }:

{
  # Hide mouse cursor when inactive.
  services.unclutter.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "compose:caps";

  services.xserver.vaapiDrivers = [ pkgs. vaapiIntel ];

  services.xserver.displayManager = {
    sessionCommands = ''
      xsetroot -cursor_name left_ptr &
    '';
    slim = {
      enable = true;
      defaultUser = "jomik";
      extraConfig = "focus_password yes";
      theme = pkgs.fetchurl {
        url = "https://github.com/jagajaga/nixos-slim-theme/archive/2.0.tar.gz";
        sha256 = "0lldizhigx7bjhxkipii87y432hlf5wdvamnfxrryf9z7zkfypc8";
      };
    };
  };
  #services.xserver.windowManager.xmonad = {
    #enable = true;
    #enableContribAndExtras = true;
  #};
  services.xserver.windowManager.i3.enable = true;
  services.xserver.desktopManager.default = "none";
  #services.xserver.desktopManager.xterm.enable = false;

  environment.systemPackages = with pkgs; [
    dmenu2
    i3status
    #haskellPackages.xmobar
  ];
}
