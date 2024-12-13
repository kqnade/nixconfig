{pkgs, lib, config,...}:
{
  xsession.windowManager.i3 = {
    enable = true;
    config = let mod = "Mod4"; in{
      gap = {
        inner = 4;
      };
    };    
  };
}
