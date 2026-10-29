{ pkgs, ... }:

{
    programs.alacritty = {
        enable = true;
        package = pkgs.alacritty;
        settings = {
            window = {
                opacity = 0.5;
            };
        };
    };
}