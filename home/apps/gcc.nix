{ pkgs, ... }:

{
  programs.gcc = {
    enable = true;
    package = pkgs.gcc;
  };
}