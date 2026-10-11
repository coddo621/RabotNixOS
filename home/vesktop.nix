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

    vencord = {
      settings = {
        autoUpdate = true;
        autoUpdateNotification = true;
        useQuickCss = true;
        eagerPatches = false;
        enabledThemes = [
          "VGUICord.theme.css"
        ];

        themeLinks = [
          "https://dom1torii.github.io/VGUICord/src/vguicord.theme.css"
        ];
        enableReactDevtools = false;
        frameless = true;
        transparent = true;
        winCtrlQ = false;
        macosVibrancyStyle = "";
        windowsMaterial = "none";
        disableMinSize = true;
        nativeTitleBar = false;
        notifications = {
          timeout = 5000;
          position = "top-right";
          useNative = "not-focused";
          logLimit = 50;
        };
        cloud = {
          authenticated = false;
          url = "https://api.vencord.dev/";
          settingsSync = false;
          settingsSyncVersion = 0;
        };
        plugins = {
          AccountPanelServerProfile = {
            enabled = true;
            prioritizeServerProfile = true;
          };
          AddAttachments.enabled = true;
          AlwaysAnimate.enabled = true;
          AlwaysExpandRoles.enabled = true;
          AlwaysTrust = {
            enabled = true;
            domain = true;
            file = true;
          };
          CharacterCounter.enabled = true;
          CallTimer.enabled = true;
        };
      };
    };
  };
}
