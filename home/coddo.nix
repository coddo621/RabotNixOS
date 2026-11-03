{ pkgs, ... }:

{
  imports = [ ./apps ];
  
  home = {
    username = "coddo";
  };

  home.homeDirectory = "/home/coddo";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    #Non-options
    everforest-cursors
    wget
    nmap
    netdiscover
    scrcpy
    android-tools
    overskride

    timg
    unityhub
    firefox
    krita
    git
    eclipses.eclipse-java
    arduino-ide
    #ani-cli
    fzf
    sublime4
    gcc
    wlogout
    gnome-disk-utility
    grim
    nautilus
    hypridle
    hyprlock
    hyprpicker
    libreoffice
    slurp
    qbittorrent
    pavucontrol
  ];

  home.pointerCursor = {
    enable = true;

    package = pkgs.everforest-cursors;
    name = "everforest-cursors";
    size = 24;

    gtk.enable = true;
    x11.enable = true;
    hyprcursor.enable = true;
  };

  programs.home-manager.enable = true;
}
