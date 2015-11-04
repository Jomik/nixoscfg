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
    wget curl
    gitAndTools.gitFull 
    chromium
    vim emacs24WithPackages
    rxvt_unicode
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";

  services.locate.enable = true;
}
