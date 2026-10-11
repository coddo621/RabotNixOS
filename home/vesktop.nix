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

          AnonymiseFileNames = {
            enabled = false;
            anonymiseByDefault = true;
            method = "random";
            randomizedLength = 10;
            consistent = "";
          };

          AutoDNDWhilePlaying = {
            enabled = false;
            statusToSet = "dnd";
          };

          BetterFolders = {
            enabled = true;
            sidebar = true;
            sidebarAnim = true;
            closeAllFolders = true;
            closeAllHomeButton = true;
            closeOthers = true;
            closeServerFolder = true;
            forceOpen = true;
            keepIcons = false;
            showFolderIcon = "Always";
          };

          BetterGifAltText.enabled = true;
          BetterGifPicker.enabled = true;
          
          BetterRoleContext = {
            enabled = true;
            roleIconFileFormat = "png";
          };

          BetterRoleDot = {
            enabled = true;
            bothStyles = true;
            copyRoleColorInProfilePopout = true;
          };

          BetterSessions = {
            enabled = true;
            backgroundCheck = true;
            checkInterval = 30;
          };

          BetterUploadButton.enabled = true;
          BiggerStreamPreview.enabled = true;
          
          BlurNsfw = {
            enabled = true;
            blurAmount = 10;
          };

          CallTimer = {
            enabled = true;
            format = "human";
          };
          
          CharacterCounter = {
            enabled = true;
            colorEffects = true;
          };

          ClearURLs.enabled = true;

          ClientTheme = {
            enabled = false;
            color = "313338";
            resetColor = false;
          };

          ColorSighted.enabled = false;
          ConcatenatedComponentExtractor.enabled = true;
          ConsoleJanitor = {
            enabled = true;
            disableLoggers = true;
            disableSpotifyLogger = true;
            whitelistedLoggers = "";
            allowLevel = {
              error = true;
              warn = false;
              trace = false;
              log = false;
              info = false;
              debug = false;
            };
          };

          ConsoleShortcuts.enabled = true;

          CopyEmojiMarkdown = {
            enabled = true;
            copyUnicode = true;
          };

          CopyFileContents.enabled = true;
          CopyStickerLinks.enabled = true;
          CopyUserURLs.enabled = true;

          CrashHandler = {
            enabled = true;
            attemptToPreventCrashes = true;
            attemptToNavigateToHome = true;
          };

          CustomCommands.enabled = true;

          CustomIdle = {
            enabled = true;
            idleTimeout = 60;
            remainInIdle = false;
          };

          CustomRPC = {
            enabled = true;
            enablePresence = true;
          };

          Dearrow = {
            enabled = true;
            hideButton = false;
            replaceElements = "ReplaceAllElements";
            dearrowByDefault = true;
          };

          Decor.enabled = true;

          DevCompanion = {
            enabled = false;
            notifyOnAutoConnect = true;
          };

          DisableCallIdle.enabled = true;
          DisableDeepLinks.enabled = true;
        };
      };
    };
  };
}
