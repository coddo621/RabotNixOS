
{ lib, pkgs, inputs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    configType = "lua";

    extraConfig = ''
      hl.on("hyprland.start", function()
        hl.exec_cmd("waybar")
        hl.exec_cmd("awww-daemon")
        hl.exec_cmd("sleep 0.5; awww img $(find /home/coddo/Pictures/Wallpapers -type f | shuf -n 1) --transition-type random --transition-step 90 --transition-duration 1.5 --transition-fps 60 --transition-angle 45 --transition-pos center --transition-wave 20,20 --transition-bezier 0.54,0,0.34,0.99 --resize crop --crop-gravity center --filter Lanczos3 --fill-color 000000")
      end)
    '';

    settings = {
      mod._var = "SUPER";

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

        decoration.rounding = 10;

        input.kb_layout = "hr";
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
      ] ++
      (map
        (n: {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + ${if n == 10 then "0" else toString n}\"")
            (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = ${toString n} })")
          ];
        })
        (builtins.genList (i: i + 1) 10)
      ) ++
      (map
        (n: {
          _args = [
            (lib.generators.mkLuaInline "mod .. \" + SHIFT + ${if n == 10 then "0" else toString n}\"")
            (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = ${toString n} })")
          ];
        })
        (builtins.genList (i: i + 1) 10)
      );
    };
  };
}
