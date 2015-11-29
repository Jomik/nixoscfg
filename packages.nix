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
    man_db utillinuxCurses
    wget curl
    acpi
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
    enableGhostscriptFonts = true;
    enableCoreFonts = true;
    fonts = with pkgs; [
      clearlyU
      cm_unicode
      dejavu_fonts
      dosemu_fonts
      font-awesome-ttf
      freefont_ttf
      inconsolata
      powerline-fonts
      proggyfonts
      source-code-pro
      source-sans-pro
      source-serif-pro
      terminus_font
      tewi-font
      ttf_bitstream_vera
      ubuntu_font_family
      unifont
      vistafonts
      wqy_microhei
      hack-font
    ] ++ lib.filter lib.isDerivation (lib.attrValues lohit-fonts);
  };
}
