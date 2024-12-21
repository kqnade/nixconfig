{...}:
{
  programs.nixvim = {
    enable = true;

    imports = [
      ./opts.nix
      ./globals.nix
      ./plugins.nix
      ./keymaps.nix
    ];
  };
}
