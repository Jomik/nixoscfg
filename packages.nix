{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;

    chromium = {
      enablePepperFlash = true;
      enablePepperPDF = true;
    };
  };

  environment.systemPackages = with pkgs; [
    wget curl scrot
    gitAndTools.gitFull 
    chromium
    weechat
    vim emacs
    rxvt_unicode-with-plugins
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";
}
