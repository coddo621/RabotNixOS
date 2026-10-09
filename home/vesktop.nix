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
      };
      
      extraQuickCss = ''
        @import url('https://dom1torii.github.io/discord16/src/css/main.css');
        * {
          --font: "ArialPixel"; /* Change to "" for default font */
          --rounded-avatars: false;
          --steam-logo: true;
        }

        * {
          --custom-bg: #4a5942;
          --custom-secondary-bg: #3e4637;

          --custom-accent: #c4b550;
          --custom-secondary-accent: #958831;

          --dark-border: #292c21;
          --light-border: #8c9284;

          --custom-text: #ffffff;
          --custom-secondary-text: #bdbdbd;
        }     
      '';
    };
  };
}
