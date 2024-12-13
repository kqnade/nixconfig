{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
  ];

  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services.openssh.enable = true;
}
