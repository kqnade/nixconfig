{ config, pkgs, ... }:

{
  home.username = "kqnade";
  home.homeDirectory = "/home/kqnade";
  home.stateVersion = "24.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
    gh
    ghq
    delta
    tmux
    eza
    bat
    fd
  ];

  programs.home-manager.enable = true;

  imports = [
    ./../../modules/home/kqnade/git.nix
  ];

  home.sessionVariables = rec {
    GPG_KEYID = "3FB8AE32BA2DF93E54C640A0228245D67A8FDBC1";
  };

  programs.git = {
    enable = true;
    userName = "kqnade";
    userEmail = "git@k4na.de";

    aliases = {
      ci = "commit";
      co = "checkout";
      br = "branch";
      st = "status";
      last = "log -1 HEAD";
      sub = "submodule update -- remote --merge";
    };

    signing = {
      key = "485A496FEC9ADAF7";
      signByDefault = true;
    };

    extraConfig = {
      credential."https://github.com".helper = "!gh auth git-credential";
      pull = {
        ff = "only";
	rebase = true;
      };
      init = {
        defaultBranch = "main";
      };
      rebase = {
        autoStash = true;
	autoSquash = true;
      };
      url = {
        "https*//github.com" = {
          insteadOf = "git://github.com";
	};
      };
      commit = {
        gpgSign = true;
      };
      tag = {
        gpgSign = true;
      };
      
    };
  };
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "eza --icons";
      la = "eza -ila";

      g = "git";

      vi = "nvim";
      vim = "nvim";
    };
    
  };
  
  programs.nixvim = {
    enable = true;
    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
  };
}
