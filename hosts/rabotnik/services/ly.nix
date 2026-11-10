{ pkgs, ... }:

{
  services.displayManager.ly = {
    enable = true;
    package = pkgs.ly;
    settings = {
      animation = "doom"; # Options: matrix, doom, colormix, fire, none
      bigclock = true;

      bg = "0x353c27";
      fg = "0xd6d8b8";
      border_fg = "0x78805a";
      error_fg = "0xf0f0d0";
      error_bg = "0x24291d";
      box_title = "Welcome";
      hide_borders = false;
      blank_box = true;
      margin_box_h = 2;
      margin_box_v = 1;
    };
  };
}