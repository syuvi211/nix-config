{ config, pkgs, ...
}:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "nixos";

  programs.nix-ld.enable = true;

  fileSystems."/mnt/1TB" = {
  device = "UUID=33399c76-ffec-477b-a91c-ce75f12b1ad5";
  fsType = "xfs";
  options = [ "defaults" ];
  };

  security.sudo.extraConfig = "Defaults pwfeedback";

  nixpkgs.config.allowUnfree = true;

    }
