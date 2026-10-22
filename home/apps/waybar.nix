{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd.target = "";
    settings.mainBar = {
      layer = "top";
      position = "top";
      height = 38;
      spacing = 0;

      margin-top = 6;
      margin-left = 8;
      margin-right = 8;

      # Keep the bar visible over tiled windows.
      exclusive = true;
      passthrough = false;
      fixed-center = true;

      modules-left = [
        "custom/steam"
        "hyprland/workspaces"
        "hyprland/submap"
        "hyprland/window"
      ];

      modules-center = [
        "clock"
      ];

      modules-right = [
        "idle_inhibitor"
        "pulseaudio"
        "network"
        "bluetooth"
        "backlight"
        "battery"
        "cpu"
        "memory"
        "temperature"
        "disk"
        "power-profiles-daemon"
        "tray"
      ];

      "custom/steam" = {
        format = "  STEAM  ";
        tooltip = true;
        tooltip-format = "Steam Classic • Hyprland";
      };

      "hyprland/workspaces" = {
        format = "{icon}";
        format-icons = {
          "1" = "01";
          "2" = "02";
          "3" = "03";
          "4" = "04";
          "5" = "05";
          "6" = "06";
          "7" = "07";
          "8" = "08";
          "9" = "09";
          "10" = "10";
          urgent = "!";
          active = "◆";
          default = "·";
        };

        persistent-workspaces = {
          "*" = 5;
        };

        all-outputs = false;
        show-special = true;
        disable-scroll = true;
        on-click = "activate";
      };

      "hyprland/submap" = {
        format = "[ {name} ]";
        tooltip = false;
      };

      "hyprland/window" = {
        format = "{class} — {title}";
        max-length = 48;
        separate-outputs = true;
        rewrite = {
          "(.*) — Mozilla Firefox" = "$1 — Firefox";
        };
      };

      clock = {
        interval = 1;
        format = "  {:%a %d %b  |  %H:%M:%S}  ";
        format-alt = "{:%A, %d %B %Y}";
        tooltip-format = "<tt>{calendar}</tt>";
        calendar = {
          mode = "month";
          weeks-pos = "left";
          format = {
            months = "<span color='#d2e6bd'><b>{}</b></span>";
            days = "<span color='#a8c875'>{}</span>";
            weeks = "<span color='#91b77c'>W{}</span>";
            weekdays = "<span color='#d2e6bd'>{}</span>";
            today = "<span color='#142819' background='#a8c875'><b>{}</b></span>";
          };
        };
      };

      idle_inhibitor = {
        format = "{icon}";
        format-icons = {
          activated = "  ◉  ";
          deactivated = "  ◎  ";
        };
        tooltip-format-activated = "Idle inhibition enabled";
        tooltip-format-deactivated = "Idle inhibition disabled";
      };

      pulseaudio = {
        format = "  {icon} {volume}%  ";
        format-muted = "  MUTED  ";
        format-icons = {
          default = [ "VOL" ];
          headphone = "HP";
          headset = "HS";
        };
        scroll-step = 5;
        on-click = "pavucontrol";
        tooltip = true;
      };

      network = {
        format-wifi = "  WIFI {signalStrength}%  ";
        format-ethernet = "  LAN  ";
        format-disconnected = "  OFFLINE  ";
        tooltip-format = "{ifname}: {ipaddr}";
        interval = 5;
        on-click = "nm-connection-editor";
      };

      bluetooth = {
        format = "  BT  ";
        format-disabled = "  BT OFF  ";
        format-connected = "  BT {num_connections}  ";
        tooltip-format = "{controller_alias}\n{status}";
        on-click = "blueman-manager";
      };

      backlight = {
        format = "  BL {percent}%  ";
        tooltip = true;
      };

      battery = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "  BAT {capacity}%  ";
        format-charging = "  CHG {capacity}%  ";
        format-plugged = "  AC {capacity}%  ";
        format-alt = "  {time}  ";
        tooltip = true;
      };

      cpu = {
        interval = 2;
        format = "  CPU {usage}%  ";
        states = {
          warning = 70;
          critical = 90;
        };
        tooltip = true;
      };

      memory = {
        interval = 2;
        format = "  RAM {percentage}%  ";
        states = {
          warning = 75;
          critical = 90;
        };
        tooltip-format = "RAM: {used:0.1f}G / {total:0.1f}G";
      };

      temperature = {
        interval = 5;
        format = "  TMP {temperatureC}°C  ";
        format-critical = "  HOT {temperatureC}°C  ";
        critical-threshold = 85;
        tooltip = true;
      };

      disk = {
        interval = 30;
        path = "/";
        format = "  DISK {percentage_used}%  ";
        states = {
          warning = 80;
          critical = 90;
        };
        tooltip-format = "{used} / {total} used";
      };

      "power-profiles-daemon" = {
        format = "  PWR {icon}  ";
        tooltip-format = "Power profile: {profile}";
        format-icons = {
          default = "BAL";
          performance = "MAX";
          balanced = "BAL";
          power-saver = "ECO";
        };
      };

      tray = {
        icon-size = 16;
        spacing = 6;
      };
    };

    style = ''
      /* Steam Classic 2003: forest green, olive bevels, pale text */

      * {
        font-family: "DejaVu Sans", "Noto Sans", sans-serif;
        font-size: 11px;
        font-weight: 500;
        min-height: 0;
        border: none;
        border-radius: 0;
        transition: none;
      }

      window#waybar {
        background: transparent;
        color: #d2e6bd;
      }

      window#waybar > box {
        background: #142819;
        border: 1px solid #536d3c;
        border-top-color: #789b43;
        border-left-color: #789b43;
        border-bottom-color: #0b160e;
        box-shadow: inset 0 1px #314c2d;
      }

      tooltip {
        background: #203524;
        color: #d2e6bd;
        border: 1px solid #789b43;
        padding: 5px;
      }

      tooltip label {
        color: #d2e6bd;
      }

      #custom-steam {
        color: #142819;
        background: #a8c875;
        font-weight: 900;
        letter-spacing: 1px;
        border-right: 1px solid #0b160e;
        box-shadow: inset 1px 1px #d2e6bd,
                    inset -1px -1px #536d3c;
        padding: 0 10px;
        margin: 4px;
      }

      #workspaces {
        margin: 4px 3px;
        padding: 0 3px;
        background: #203524;
        border: 1px solid #435a3a;
        box-shadow: inset 1px 1px #314c2d,
                    inset -1px -1px #0b160e;
      }

      #workspaces button {
        color: #91b77c;
        background: transparent;
        padding: 0 9px;
        margin: 2px;
        border: 1px solid transparent;
        box-shadow: none;
      }

      #workspaces button:hover {
        color: #d2e6bd;
        background: #314c2d;
        border-color: #789b43;
      }

      #workspaces button.active {
        color: #142819;
        background: #a8c875;
        border: 1px solid #d2e6bd;
        box-shadow: inset 1px 1px #d2e6bd,
                    inset -1px -1px #536d3c;
      }

      #workspaces button.urgent {
        color: #ffffff;
        background: #8b3429;
        border-color: #d7654f;
      }

      #submap {
        color: #142819;
        background: #d2e6bd;
        padding: 0 8px;
        margin: 4px 2px;
      }

      #window {
        color: #b6c9a6;
        padding: 0 10px;
      }

      #clock {
        color: #d2e6bd;
        background: #203524;
        padding: 0 12px;
        margin: 4px 0;
        border-left: 1px solid #789b43;
        border-right: 1px solid #435a3a;
        box-shadow: inset 0 1px #314c2d,
                    inset 0 -1px #0b160e;
        font-weight: bold;
      }

      #idle_inhibitor,
      #pulseaudio,
      #network,
      #bluetooth,
      #backlight,
      #battery,
      #cpu,
      #memory,
      #temperature,
      #disk,
      #power-profiles-daemon,
      #tray {
        color: #d2e6bd;
        background: #203524;
        margin: 4px 1px;
        padding: 0 5px;
        border-top: 1px solid #536d3c;
        border-left: 1px solid #536d3c;
        border-right: 1px solid #0b160e;
        border-bottom: 1px solid #0b160e;
        box-shadow: inset 1px 1px #314c2d;
      }

      #idle_inhibitor.activated,
      #pulseaudio.muted {
        color: #a8c875;
      }

      #network.disconnected,
      #battery.critical,
      #temperature.critical,
      #cpu.critical,
      #memory.critical,
      #disk.critical {
        color: #ff9b82;
        background: #40221e;
      }

      #battery.warning,
      #cpu.warning,
      #memory.warning,
      #disk.warning {
        color: #e8d58c;
      }

      #tray {
        padding: 0 7px;
        margin-right: 5px;
      }
    '';
  };
}