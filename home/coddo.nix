{ pkgs, ... }:

{
  imports = [ ./apps ];
  
  home = {
    username = "coddo";
    homeDirectory = "/home/coddo";
    stateVersion = "26.05";

    pointerCursor = {
      enable = true;
      package = pkgs.everforest-cursors;
      name = "everforest-cursors";
      size = 24;
      gtk.enable = true;
      x11.enable = true;
      hyprcursor.enable = true;
    };
  };

  home.packages = with pkgs; [
    #Non-options
    everforest-cursors
    wget
    nmap
    netdiscover
    scrcpy
    android-tools
    overskride
    pwvucontrol
    timg
    unityhub
    krita
    slurp
    unstable.ani-cli

    eclipses.eclipse-java
    arduino-ide
    fzf
    sublime4
    gcc
    gnome-disk-utility
    grim
    nautilus
    hypridle
    hyprlock
    hyprpicker
    libreoffice
    qbittorrent
  ];
}
