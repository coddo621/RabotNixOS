{ pkgs, inputs, lib, ... }:

{
  imports = [
    ./apps/alacritty.nix
    ./apps/awww.nix
    ./apps/btop.nix
    ./apps/hyprland.nix
    ./apps/hyprshell.nix
    ./apps/micro.nix
    ./apps/mpv.nix
    ./apps/vesktop.nix
    ./apps/vscodium.nix
    ./apps/waybar.nix
    ./apps/wofi.nix
    ./apps/zoxide.nix
    ./apps/zsh.nix
    
    inputs.areofyl-fetch.homeManagerModules.default
  ];

  home.username = "coddo";
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
