{ pkgs, ... }:

{
  programs.vscodium = {
    enable = true;
    package = pkgs.vscodium;

    profiles.default.extensions =
      (with pkgs.vscode-extensions; [
        adpyke.codesnap
        alefragnani.bookmarks
        alefragnani.project-manager
        bradlc.vscode-tailwindcss
        yzhang.markdown-all-in-one
        jeff-hykin.better-nix-syntax
        usernamehw.errorlens
        svelte.svelte-vscode
        serayuzgur.crates
        rust-lang.rust-analyzer
        ritwickdey.liveserver
        pranaygp.vscode-css-peek
        njpwerner.autodocstring
        
      ])
      ++ [
        pkgs.nix-vscode-extensions.vscode-marketplace."76valentin"."steam-classic"
        pkgs.nix-vscode-extensions.vscode-marketplace."jtlowe"."vscode-icon-theme"
      ];
  };
}