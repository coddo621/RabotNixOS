{ config, pkgs, inputs, ... }:

let
  cyberReTheme = pkgs.stdenvNoCC.mkDerivation {
    pname = "cyberre-grub-theme";
    version = "1.0";

    src = ./assets/grub_themes/CyberRe/CyberRe;

    installPhase = ''
      mkdir -p $out
      cp -r $src/. $out/
    '';
  };
in

{
  imports = [
    ./services
    ./hardware-configuration.nix
  ];

  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        useOSProber = false;
        theme = cyberReTheme;
      };
    };
  };

  networking = {
    hostName = "rabotnik";

    networkmanager = {
      enable = true;
    };

    firewall = {
      enable = true;
      allowPing = false;
    };
  };

  time.timeZone = "Europe/Zagreb";

  i18n = {
    defaultLocale = "en_US.UTF-8";

    extraLocaleSettings = {
      LC_ADDRESS = "hr_HR.UTF-8";
      LC_IDENTIFICATION = "hr_HR.UTF-8";
      LC_MEASUREMENT = "hr_HR.UTF-8";
      LC_MONETARY = "hr_HR.UTF-8";
      LC_NAME = "hr_HR.UTF-8";
      LC_NUMERIC = "hr_HR.UTF-8";
      LC_PAPER = "hr_HR.UTF-8";
      LC_TELEPHONE = "hr_HR.UTF-8";
      LC_TIME = "hr_HR.UTF-8";
    };
  };

  console.keyMap = "croat";
  
  system.userActivationScripts.zshrc = "touch .zshrc";

  security.rtkit.enable = true;

  users.users.coddo = {
    isNormalUser = true;
    description = "Coddo";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  users.defaultUserShell = pkgs.zsh;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  
  #nix.settings.auto-optimize-store = true;
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 14d";
  system.autoUpgrade.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    font-awesome
    iosevka
    jetbrains-mono
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [ "openssl-1.1.1w"];

  nixpkgs.overlays = [
    inputs.nix-vscode-extensions.overlays.default
  ];
  system.stateVersion = "26.05";
}
