{ config, pkgs, ... }: {
    wsl.enable = true;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];


    environment.systemPackages = with pkgs; [
        git
        subversion
        vim
        wget
    ];

    users.users.nixos = {
        isNormalUser = true;
        extraGroups =  [
            "wheel"         # sudo
        ];
    };

    system.stateVersion = "23.11";    
}
