{lib, ...}:
{
  services.xserver = {
    enable = true;
    autorun = false;
    xkb.layout = "jp";
    displayManager = {
      lightdm.enable = true;
    };
    windowManager.i3 = {
      enable = true;
    };
  };
}
