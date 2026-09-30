{ pkgs, inputs, ... }:

{
  home.username = "coddo";
  home.homeDirectory = "/home/coddo";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    kdePackages.kate
    vesktop
    micro-with-wl-clipboard
    firefox
    krita
    git
    alacritty
    eclipses.eclipse-java
    arduino-ide
    btop
    ani-cli
    android-tools
    ungoogled-chromium
  ];

  programs.home-manager.enable = true;

  programs.vesktop.enable = true;

  programs.firefox.enable = true;

  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";

      plugins = [
        "git"
        "sudo"
        "docker"
      ];

      shellAliases = {
      	rebuild = "bash $HOME/.config/nixos/rebuild.sh";
      	garbage = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
      }
    };
  };

  imports = [
      inputs.areofyl-fetch.homeManagerModules.default
    ];
  
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
