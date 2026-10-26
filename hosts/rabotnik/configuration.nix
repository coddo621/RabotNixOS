
{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];



  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
    useOSProber = false;
  };

  networking.hostName = "rabotnik";
  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = true;
    allowPing = false;
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

  services.xserver.enable = false;

  services.xserver.xkb = {
    layout = "hr";
    variant = "";
  };

  console.keyMap = "croat";

  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  programs.zsh.enable = true;

  users.users.coddo = {
    isNormalUser = true;
    description = "Coddo";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  
  #nix.settings.auto-optimize-store = true;
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 14d";
  system.autoUpgrade.enable = true;

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "doom"; # Options: matrix, doom, colormix, fire, none
      bigclock = true;
    };
  };

  environment.systemPackages = with pkgs; [
    ly
  ];

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
