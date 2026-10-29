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
        donjayamanne.githistory
        vscjava.vscode-maven
        vscjava.vscode-gradle
        vscjava.vscode-java-pack
        vscjava.vscode-java-test
        vscjava.vscode-java-debug
        vscjava.vscode-java-dependency
        fill-labs.dependi
        github.vscode-github-actions
        github.vscode-pull-request-github
        christian-kohler.path-intellisense
        kamikillerto.vscode-colorize
        dbaeumer.vscode-eslint
        esbenp.prettier-vscode
        mechatroner.rainbow-csv
        ms-azuretools.vscode-containers
        ms-dotnettools.csdevkit
        ms-dotnettools.csharp
        ms-dotnettools.vscode-dotnet-runtime
        ms-dotnettools.vscodeintellicode-csharp
        ms-python.debugpy
        ms-python.python
        ms-python.vscode-pylance
        ms-python.vscode-python-envs
        ms-vscode.cpptools
        ms-vscode.cmake-tools
        ms-vscode.live-server
        ms-vscode.cpptools-extension-pack
        ms-vscode-remote.remote-containers
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
        ms-vscode.remote-explorer
        visualstudiotoolsforunity.vstuc
      ])
      ++ [
        pkgs.nix-vscode-extensions.vscode-marketplace."76valentin"."steam-classic"
        pkgs.nix-vscode-extensions.vscode-marketplace."jtlowe"."vscode-icon-theme"
        pkgs.nix-vscode-extensions.vscode-marketplace."wware"."snippet-creator"
        pkgs.nix-vscode-extensions.vscode-marketplace."wayou"."vscode-todo-highlight"
        pkgs.nix-vscode-extensions.vscode-marketplace."1yib"."rust-bundle"
        pkgs.nix-vscode-extensions.vscode-marketplace."adamerose"."markdown-wysiwyg"
        pkgs.nix-vscode-extensions.vscode-marketplace."cardinal90"."multi-cursor-case-preserve"
        pkgs.nix-vscode-extensions.vscode-marketplace."cirlorm"."mobileview"
        pkgs.nix-vscode-extensions.vscode-marketplace."donjayamanne"."python-environment-manager"
        pkgs.nix-vscode-extensions.vscode-marketplace."donjayamanne"."python-extension-pack"
        pkgs.nix-vscode-extensions.vscode-marketplace."donjayamanne"."python-environment-manager"
        pkgs.nix-vscode-extensions.vscode-marketplace."dustypomerleau"."rust-syntax"
        pkgs.nix-vscode-extensions.vscode-marketplace."helixquar"."randomeverything"
        pkgs.nix-vscode-extensions.vscode-marketplace."kevinrose"."vsc-python-indent"
        pkgs.nix-vscode-extensions.vscode-marketplace."ms-vscode"."cpp-devtools"
        pkgs.nix-vscode-extensions.vscode-marketplace."ms-vscode"."cpptools-themes"
        pkgs.nix-vscode-extensions.vscode-marketplace."ms-vscode"."vscode-serial-monitor"
        pkgs.nix-vscode-extensions.vscode-marketplace."nodenest"."readme-markdown-viewer"
        pkgs.nix-vscode-extensions.vscode-marketplace."pnp"."polacode"
        pkgs.nix-vscode-extensions.vscode-marketplace."sd-tools"."sd-ruby-extension-vs"
        pkgs.nix-vscode-extensions.vscode-marketplace."secanis"."jenkinsfile-support"
        pkgs.nix-vscode-extensions.vscode-marketplace."torresgol10"."bootstrap-class-autocomplete"
        pkgs.nix-vscode-extensions.vscode-marketplace."trixnz"."vscode-lua"
        pkgs.nix-vscode-extensions.vscode-marketplace."vscjava"."migrate-java-to-azure"
        pkgs.nix-vscode-extensions.vscode-marketplace."vscjava"."vscode-java-upgrade"
      ];
  };
}