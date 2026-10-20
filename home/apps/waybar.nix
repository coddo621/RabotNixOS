{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd.target = "";
    settings = {

    };
    #style = ''
    #  * {
    #    border: none;
    #    border-radius: 0;
    #    
    #  }
    #'';
  };
}