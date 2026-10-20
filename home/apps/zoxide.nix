{ pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
    package = pkgs.zoxide;
    flags = [];
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableZshIntegration = true;
    enableXonshIntegration = false;
    enableNushellIntegration = false;
  };
}