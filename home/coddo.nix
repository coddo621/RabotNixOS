{ pkgs, ... }:

{
  home.username = "coddo";
  home.homeDirectory = "/home/coddo";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    kdePackages.kate
    vesktop
    micro-with-wl-clipboard
    firefox
    krita
    git
    alacritty
    eclipses.eclipse-java
    arduino-ide
    btop
    ani-cli
    android-tools
    ungoogled-chromium
    fetch
  ];

  programs.home-manager.enable = true;

  programs.vesktop.enable = true;

  programs.firefox.enable = true;

  programs.zsh = {
    enable = true;

    oh-my-zsh = {
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
