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
    silver-searcher autojump
    zip unzip
    maim slop
    gitAndTools.gitFull 
    openjdk gcc
    chromium
    weechat
    vim ctags tmux
    rxvt_unicode-with-plugins
  ];

  fonts = {
    fontconfig = {
      enable = true;

      hinting.style = "slight";
      hinting.autohint = false;
      ultimate = {
        enable = true;
        allowBitmaps = true;
        rendering = pkgs.fontconfig-ultimate.rendering.ultimate-darker;
      };
    };
    fonts = with pkgs; [
      inconsolata
      powerline-fonts
      source-code-pro
      hack-font
    ];
  };
}
