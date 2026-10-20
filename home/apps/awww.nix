{ pkgs, ... }:
#DONE
{
  services.awww = {
    enable = true;
    package = pkgs.awww;
    extraArgs = [""];
  };
}