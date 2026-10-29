{ pkgs, ... }:

{
    programs.alacritty = {
        enable = true;
        package = pkgs.alacritty;
        settings = {
            opacity = 0.5;
        };
    };
}