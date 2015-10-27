{ config, pkgs, ... };

{
  sound.extraConfig = ''
    pcm.!default {
      type hw
      card PCH
    }
    
    ctl.!default {
      type hw
      card PCH
    }
  '';
}
