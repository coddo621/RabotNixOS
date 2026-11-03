{ pkgs, ...}:

{
  programs.obsidian = {
    enable = true;
    package = pkgs.obsidian;
    cli.enable = true;
    vaults = {
      CyberpunkRed = {
        target = "Documents/Obsidian/CyberpunkRed";
      };
    };
  };
}