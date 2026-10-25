{ pkgs, inputs, lib, ... }:

{
  imports =
    let
      appsDir = ./apps;
      files = builtins.readDir appsDir;
    in
    (builtins.map
      (name: appsDir + "/${name}")
      (builtins.filter
        (name:
          files.${name} == "regular"
          && builtins.match ".*\\.nix" name != null
        )
        (builtins.attrNames files)))
    ++ [
      inputs.areofyl-fetch.homeManagerModules.default
    ];

  home.username = "coddo";
  home.homeDirectory = "/home/coddo";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    everforest-cursors
    wget
    nmap
    
    unityhub

    micro-with-wl-clipboard
    firefox
    krita
    git
    alacritty
    eclipses.eclipse-java
    arduino-ide
    #ani-cli
    android-tools
    ungoogled-chromium
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
    netdiscover
    slurp
    scrcpy
    qbittorrent
    pavucontrol
    overskride
    obsidian
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

  programs.waybar = {
    enable = true;
  };

  

  programs.home-manager.enable = true;

  programs.firefox.enable = true;

  programs.fetch = {
    enable = true;

    labelColor = "red";

    info = [
      "os"
      "kernel"
      "uptime"
    ];

    speed = 1.0;
    spin = "xy";
  };
}
