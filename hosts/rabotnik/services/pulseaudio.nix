{ pkgs, ... }:

{
  services.pulseaudio = {
    enable = false;
    package = pkgs.pulseaudio;
  };
}