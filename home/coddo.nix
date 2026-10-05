{ pkgs, inputs, lib, ... }:

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
    mpv
    fzf
    sublime4
    gcc
    vscode
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      mod = {
        _var = "SUPER";
      };

      config = {
        general = {
          gaps_in = 5;
          gaps_out = 20;
          border_size = 2;
        };

        decoration = {
          rounding = 10;
        };
      };
      
      bind = [
        {
          _args = [
            "SUPER + RETURN"
            (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"alacritty\")")
          ];
        }
      ];
    };
  };

  programs.home-manager.enable = true;

  programs.vesktop.enable = true;

  programs.firefox.enable = true;

  programs.zsh = {
    enable = true;

    shellAliases = {
      rebuild = "bash $HOME/.config/nixos/rebuild.sh";
      garbage = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
    };
	
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";

      plugins = [
        "git"
        "sudo"
        "docker"
      ];
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
