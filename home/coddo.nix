{ pkgs, ... }:

{
  imports = [ ./apps ];
  
  home = {
    username = "coddo";
    homeDirectory = "/home/coddo";
    stateVersion = "26.05";

    pointerCursor = {
      enable = true;
      package = pkgs.everforest-cursors;
      name = "everforest-cursors";
      size = 24;
      gtk.enable = true;
      x11.enable = true;
      hyprcursor.enable = true;
    };

    packages = import ./apps/packages.nix { inherit pkgs; };
  };
}
