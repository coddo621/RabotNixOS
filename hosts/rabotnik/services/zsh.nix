{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    shellAliases = {
      rebuild =''(
        set -e

        CONFIG_DIR="$HOME/.config/nixos"
        cd "$CONFIG_DIR"

        echo "==> Rebuilding NixOS..."
        sudo nixos-rebuild switch --flake ".#rabotnik"

        echo "==> Rebuild successful!"

        if [[ -n "$(git status --porcelain)" ]]; then
          echo "==> Changes detected:"
          git status --short

          echo "==> Adding changes..."
          git add -A

          echo "==> Committing changes..."
          git commit -m "Update NixOS configuration"

          echo "==> Changes committed."
        else
          echo "==> No changes to commit."
        fi

        echo "==> Done!"
      )'';
        
      garbage = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
    };

    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";

      plugins = [
        "git"
        "sudo"
        "docker"
      ];
    };
  };
}