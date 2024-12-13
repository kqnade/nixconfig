{pkgs, ...}:
{
  users.users.kqnade = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      git
      vim
      zsh
    ];
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;
}
