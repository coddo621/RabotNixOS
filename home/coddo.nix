{ pkgs, inputs, lib, ... }:

{
  imports = [
    ./apps/vesktop.nix
    ./apps/awww.nix
    ./apps/btop.nix
    ./apps/wofi.nix
    inputs.areofyl-fetch.homeManagerModules.default
  ];

  home.username = "coddo";
  home.homeDirectory = "/home/coddo";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    everforest-cursors
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
    waybar
    zoxide
    wlogout
    wget
    #vscodium
    gnome-disk-utility
    grim
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
        hl.exec_cmd("sleep 0.5; awww img $(find /home/coddo/Pictures/Wallpapers -type f | shuf -n 1) --transition-type random --transition-step 90 --transition-duration 1.5 --transition-fps 60 --transition-angle 45 --transition-pos center --transition-wave 20,20 --transition-bezier 0.54,0,0.34,0.99 --resize crop --crop-gravity center --filter Lanczos3 --fill-color 000000")
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
          gaps_out = 5;
          border_size = 1;
          col = {
            active_border = {
              colors = [
                "rgba(33ccffee)"
                "rgba(00ff99ee)"
              ];
              angle = 45;
            };

            inactive_border = "rgba(595959aa)";
          };

          resize_on_border = true;
          allow_tearing = false;
          layout = "dwindle";
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

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 1\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 1 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 2\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 2 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 3\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 3 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 4\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 4 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 5\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 5 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 6\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 6 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 7\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 7 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 8\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 8 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 9\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 9 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + 0\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = 10 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 1\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 1 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 2\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 2 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 3\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 3 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 4\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 4 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 5\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 5 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 6\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 6 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 7\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 7 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 8\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 8 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 9\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 9 })")
          ];
        }

        {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + 0\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = 10 })")
          ];
        }
      ];
    };
  };

  programs.home-manager.enable = true;

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