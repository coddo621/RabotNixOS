{ pkgs, ... }:
#DONE
{
  programs.zoxide = {
    enable = true;
    package = pkgs.zoxide;
    options = [];
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableZshIntegration = true;
    enableNushellIntegration = false;
  };
}