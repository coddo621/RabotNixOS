{ pkgs, ... }:

{
  programs.vesktop = {
    enable = true;

    package = pkgs.vesktop;

    settings = {
      discordBranch = "stable";
      transparencyOption = "acrylic";
      webRTCIPHandlingPolicy = "default";
      tray = true;
      minimizeToTray = true;
      autoStartMinimized = true;
      openLinksWithElectron = false;
      staticTitle = true;
      enableMenu = false;
      enableShadow = false;
      enableRoundedCorners = false;
      disableSmoothScroll = false;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;
      arRPC = true;
      appBadge = true;
      enableTaskbarFlashing = true;
      disableMinSize = true;
      clickTrayToShowHide = false;
      nativeTitleBar = false;
      enableSplashScreen = true;
      splashTheming = true;
      splashPixelatex = true;
      #splashColor = "ffffff";
      #splashBackground = "000000";
      spellCheckLanguages = [
        "en-US"
        "hr"
      ];
      audio = {
        workaround = false;
        deviceSelect = true;
        ignoreDevices = false;
        granularSelect = true;
        ignoreVirtual = false;
        ignoreInputMedia = false;
        mute = true;
        onlySpeakers = false;
        onlyDefaultSpeakers = false;
      };
    };

    vencord.settings = {
      autoUpdate = true;
      autoUpdateNotification = true;
      useQuickCss = true;
      eagerPatches = false;
      enabledThemes = [
        "NieR-Light-Source.theme.css"
      ];

      themeLinks = [
        "https://raw.githubusercontent.com/AccraZed/YoRHA-UI-BetterDiscord/49d5eeee90307fbab5bac301010fcad5e6705be9/NieR-Light-Source.theme.css"
      ];
    };
  };
}
