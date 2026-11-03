{ inputs, ... }:
#done
{
  imports = [
    inputs.areofyl-fetch.homeManagerModules.default
  ];

  programs.fetch = {
    enable = true;

    info = [
      "os"
      "host"
      "kernel"
      "uptime"
      "packages"
      "shell"
      "display"
      "wm"
      "theme"
      "icons"
      "font"
      "terminal"
      "cpu"
      "gpu"
      "memory"
      "swap"
      "disk"
      "ip"
      "battery"
      "locale"
      "colors"
    ];

    labelColor = "green"; #other options: "red", "green", "yellow", "blue", "magenta", "cyan" and "white"
    shading = "mMz"; #other options:"mMz", ".Mm|" and "█░.Mm"
    separator = "*";
    light = "top-left"; #other options: "top-left", "top-right", "top", "left", "right", "front", "bottom-left" and "bottom-right"
    spin = "y"; #other options: "xy", "x" and "y"
    speed = 1.0;
    size = 1.5;
    height = 1;

    extraConfig = ''
      futureOptionFloat = 1.0;
      futureOptionBool = true;
      futureOptionStr = "metric";
    '';
  };
}