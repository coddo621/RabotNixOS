{ pkgs, ... }:

{
  programs.micro = {
    enable = true;
    package = pkgs.micro-with-wl-clipboard;
    settings = {
      autoindent = true;
      autosave = 15;
      autosu = true;
      backup = true;
      backupdir = "/home/coddo/.config/micro/backups";
      basename = false;
      clipboard = "external";
      colorcolumn = 0;
      
    };
  };
}