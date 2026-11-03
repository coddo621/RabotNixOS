{ pkgs, ...}:

{
  programs.obsidian = {
    enable = true;
    package = pkgs.obsidian;
    cli.enable = true;
    vaults = {
      CyberpunkRed = {
        enable = true;
        target = "Documents/Obsidian/CyberpunkRed";
      };
    };
  };
}