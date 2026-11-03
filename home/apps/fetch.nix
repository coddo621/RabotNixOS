{ inputs, ... }:

{
  imports = [
    inputs.areofyl-fetch.homeManagerModules.default
  ];

  programs.fetch = {
    enable = true;

    labelColor = "green";
    separator = "*";
    light = "top-left";
    shading = ".Mm|";

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

    speed = 1.0;
    spin = "xy";
    size = 2.0;
    height = 1;
  };
}