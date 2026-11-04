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
    pavucontrol
    timg
    unityhub
    krita
    slurp
    unstable.ani-cli
    grim
    qbittorrent
    sublime4
    gnome-disk-utility
    hypridle
    hyprpicker
    nautilus
    libreoffice
    arduino-ide
  ];
}
