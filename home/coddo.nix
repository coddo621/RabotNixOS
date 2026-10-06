{ pkgs, inputs, lib, ... }:

{
  home.username = "coddo";
  home.homeDirectory = "/home/coddo";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
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
    wofi
    waybar
    awww
    everforest-cursors
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

  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    
    extraConfig = ''
      hl.on("hyprland.start", function()
        hl.exec_cmd("waybar")
        hl.exec_cmd("awww-daemon")
        hl.exec_cmd("sleep 0.5; awww img $(find /home/coddo/Pictures/Wallpapers -type f | shuf -n 1) --transition-type random")
      end)
    '';

    settings = {
      mod = {
        _var = "SUPER";
      };

      monitor = {
        output = "eDP-1";
        mode = "1920x1080@60";
        position = "0x0";
        scale = "1.25";
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

        input = {
          kb_layout = "hr";
        };
      };
      
      bind = [
        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + Q\"")
            (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"alacritty\")")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + R\"")
            (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"wofi --show drun\")")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "\"ALT + F4\"")
            (lib.generators.mkLuaInline "hl.dsp.window.close()")
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
