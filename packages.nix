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

  fonts = {
    fontconfig = {
      enable = true;

      hinting.style = "slight";
      hinting.autohint = false;
      ultimate = {
        enable = true;
        allowBitmaps = false;
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
    ] ++ lib.filter lib.isDerivation (lib.attrValues lohit-fonts);
  };
}
