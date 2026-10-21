{ config, pkgs, ...
}:

{

  users.users.syuvi = {
    isNormalUser = true;
    description = "Rachel";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

}
