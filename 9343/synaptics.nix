{ config, pkgs, ... }:

{
  services.xserver.synaptics = {
    enable = true;

    minSpeed = "0.6";
    maxSpeed = "0.6";

    tapButtons = true;
    fingersMap = [ 1 3 2 ];
    twoFingerScroll = true;

    palmDetect = true;

    additionalOptions = ''
      Option "ClickPad" "true"
      Option "EmulateMidButtonTime" "0"
      Option "VertScrollDelta" "-111"
      Option "HorizScrollDelta" "-111"
      Option "SoftButtonAreas" "60% 0 82% 0 40% 59% 82% 0"
      Option "FingerLow" "10"
      Option "FingerHigh" "40"    
    '';
  };
}
