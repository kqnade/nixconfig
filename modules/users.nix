{pkgs, ...}:
{
  users = {
    mutableUsers = true;
    users.kqnade = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        git
        vim
        zsh
      ];
      shell = pkgs.zsh;
    };
  };
}
