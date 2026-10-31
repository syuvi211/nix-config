{ config, pkgs, ... }:

{
  boot.loader = {
    systemd-boot.enable = false;
    efi = {
      canTouchEfiVariables = false;
    };
    limine = {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      style = {
        wallpapers = [
          /etc/nixos/.dotfiles/limine/limine-splash.png
        ];
        wallpaperStyle = "stretched";
        graphicalTerminal = {
          palette = "1e1e2e;f38ba8;a6e3a1;f9e2af;89b4fa;f5c2e7;94e2d5;cdd6f4";
          brightPalette = "585b70;f38ba8;a6e3a1;f9e2af;89b4fa;f5c2e7;94e2d5;cdd6f4";
          background = "ffffffff";
          foreground = "cdd6f4";
          brightBackground = "ffffff";
          brightForeground = "cdd6f4";
        };
      };
    };
  };

  boot.kernelPackages = pkgs.linuxPackages_zen;
}
