{ pkgs, ... }:

{
    programs.vesktop = {
        enable = true;
        package = pkgs.vesktop;
        settings = {
            discordBranch = "stable";
            transparencyOption = "acrylic";
        };
    };
}
