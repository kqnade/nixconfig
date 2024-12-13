{pkgs, ...}:
{
  users.users.kqnade = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      git
      vim
    ];
  };
}
