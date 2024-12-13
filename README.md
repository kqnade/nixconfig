# nix configuration

## File structure

- Root/
  - hosts/ : configuration files
    - haedconf/ : Hardware configuraion files
      - versapro-hardware-configuration.nix : My Linux Laptop (NEC VersaPro)
    - atraqutia-configuration.nix : Minimal CLI configuration (For NEC VersaPro)
    - beltox-configuration.nix : i3 Configuration (For NEC VersaPro)
  - home/ : home-manager configurations
    - kqnade/
      - home.nix : default home configuration
      - i3home.nix : additional configuration for i3
  - modules/ : module (common) files
    - desktop/ : modules for desktop environment
      - i3.nix : i3 configuration
    - system.nix : system configuration
    - users.nix : user configuration
    - packages.nix : system packages configuration
  - flake.nix : flakes configuration
