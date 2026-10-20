{ pkgs, ... }:
#DONE
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

        uiElements = {
          chatBarButtons = {};
          messagePopoverButtons = {};
        };

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

          BetterSettings = {
            enabled = true;
            disableFade = true;
            organizeMenu = true;
            eagerLoad = true;
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
          
          BlurNSFW = {
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
          DontRoundMyTimestamps.enabled = true;
          Experiments.enabled = true;
          ExpressionCloner.enabled = true;
          F8Break.enabled = false;
          FakeNitro = {
            enabled = true;
            enableEmojiBypass = true;
            emojiSize = 48;
            transformEmojis = true;
            enableStickerBypass = true;
            stickerSize = 160;
            transformCompoundSentence = false;
            enableStreamQualityBypass = true;
            useHyperLinks = true;
            hyperLinkText = "{{NAME}}";
            disableEmbedPermissionCheck = false;
          };

          FakeProfileThemes.enabled = false;
          FavoriteEmojiFirst.enabled = true;
          FixCodeblockGap.enabled = true;
          FixDiscordCss.enabled = true;

          FixImagesQuality = {
            enabled = true;
            originalImagesInChat = false;
          };

          FixSpotifyEmbeds = {
            enabled = true;
            volume = 50;
          };

          FixYoutubeEmbeds.enabled = true;
          ForceOwnerCrown.enabled = true;
          FriendInvites.enabled = true;
          FullSearchContext.enabled = true;
          FullUserInChatbox.enabled = true;
          
          GameActivityToggle = {
            enabled = true;
            oldIcon = true;
            location = "PANEL";
          };

          GifPaste.enabled = false;

          GifProviderSwitcher = {
            enabled = true;
            provider = "tenor"; #giphy, klipy
          };

          GreetStickerPicker = {
            enabled = true;
            greetMode = "Greet";
          };

          HideMedia.enabled = true;
          IgnoreActivities.enabled = false;
          ILoveSpam.enabled = false;
          ImageFilename = {
            enabled = true;
            showFullUrl = true;
          };
          
          ImageLink.enabled = true;

          ImageZoom = {
            enabled = true;
            saveZoomValues = true;
            invertScroll = false;
            nearestNeighbour = true;
            square = false;
            zoom = 2;
            size = 100;
            zoomSpeed = 0.5;
          };

          ImplicitRelationships = {
            enabled = true;
            sortByAffinity = true;
          };

          IrcColors = {
            enabled = true;
            lightness = 50;
            memberListColors = true;
            applyColorOnlyToUsersWithoutColor = false;
            apllyColorOnlyInDms = false;
          };
          
          KeepCurrentChannel.enabled = false;

          LoadingQuotes = {
            enabled = true;
            replaceEvents = true;
            enablePluginPresetQuotes = true;
            enableDiscordPresetQuotes = false;
            additionalQuotes = "
              i love the taste blue;
              lodin da fish washer 100% new 60hz hardest in the balkans
            ";
            additionalQuotesDelimiter = ";";
          };

          MemberCount = {
            enabled = true;
            toolTip = true;
            memberList = true;
            voiceActivity = true;
          };

          MentionAvatars = {
            enabled = true;
            showAtSymbol = true;
          };
          
          MessageClickActions = {
            enabled = true;
            enableDeleteOnClick = true;
            enableDoubleClickToEdit = true;
            enableDoubleClickToReply = true;
            requireModifier = false;
          };

          MessageLatency = {
            enabled = true;
            latency = 2;
            detectDiscordKotlin = true;
            showMillis = true;
            ignoreSelf = false;
          };

          MessageLinkEmbeds = {
            enabled = true;
            messageBackgroundColor = true;
            automodEmbeds = "prefer";
            listMode = "blacklist";
          };

          MessageLogger = {
            enabled = true;
            deleteStyle = "text";
            logDeletes = true;
            collapseDeleted = false;
            logEdits = true;
            logDeletedAttachments = true;
            inLineEdits = true;
            ignoreBots = true;
            ignoreSelf = true;
            ignoreUsers = ""; #comma-separated
            ignoreCHannels = ""; #comma-separated
            ignoreGuilds = ""; #comma-separated
          };

          MoreQuickReactions = {
            enabled = true;
            reactionCount = 5;
          };

          MusicRichPresence = {
            enabled = false;
            scrobblerBackend = "lastfm";
            instanceBaseUrl = "";
            instanceAPIBaseUrl = "";
            apiKey = "";
            username = "";
            shareUsername = true;
            clickableLinks = true;
            hideWithSpotify = true;
            hideWithActivity = false;
            statusName = "";
            statusDisplayType = "artist";
            nameFormat = "ServiceName";
            useListeningStatus = "true";
            missingArt = "logo";
            showLogo = false;
            showAlbumCover = true;
          };

          MutualGroupDMs.enabled = true;

          NewGuildSettings = {
            enabled = true;
            guild = true;
            messages = 1;
            everyone = true;
            role = false;
            highlights = true;
            events = false;
            showAllChannels = true;
          };

          NoBlockedMessages = {
            enabled = true;
            ignoreMessages = true;
            applyToIgnoredUsers = true;
          };

          NoDevtoolsWarning.enabled = true;
          NoF1.enabled = true;
          NoMaskedUrlPaste.enabled = true;
          NoMiddleClickPaste.enabled = false;
          NoMosaic.enabled = true;
          NoOnboardingDelay.enabled = true;

          NoPendingCount = {
            enabled = true;
            hideFriendRequestCount = false;
            hideMessageRequestCount = false;
            hidePremiumOffersCount = true;
          };

          NoProfileThemes.enabled = true;

          NoReplyMention = {
            enabled = false;
            userList = ""; #comma-separated
            roleList = ""; #comma-separated
            shouldPingListed = true;
            inverseShiftReply = true;
          };

          NoServerEmojis = {
            enabled = false;
            shownEmojis = "currentServer";
          };

          NoSystemBAdge.enabled = false;

          NotificationVolume = {
            enabled = true;
            notificationVolume = 50;
          };

          NoTrack = {
            enabled = true;
            disableAnalytics = true;
          };

          NoTypingAnimation.enabled = false;
          NoUnblockToJump.enabled = false;
          oneko.enabled = false;
          
          OnePingPerDM = {
            enabled = true;
            channelToAffect = "both_dms";
            allowMentions = true;
            allowEveryone = false;
          };

          OpenInApp.enabled = true;

          OverrideForumDefaults = {
            enabled = true;
            defaultLayout = 2;
            defaultSortOrder = 1;
          };

          PauseInvitesForever.enabled = true;

          PermissionFreeWill = {
            enabled = false;
            lockout = true;
            onboarding = false;
          };

          PermissionsViewer = {
            enabled = true;
            permissionsSortOrder = "HighestRole";
          };

          petpet.enabled = true;

          PictureInPicture = {
            enabled = true;
            loop = false;
          };

          PinDMs = {
            enabled = true;
            pinOrder = "LastMessage";
            canCollapseDmSection = true;
            dmSectionCollapsed = false;
            userBasedCategoryList = "";
          };

          PlainFolderIcon.enabled = true;
          PlatformIndicators.enabled = true;
          PreviewMessage.enabled = true;
          QuickMention.enabled = true;

          QuickReply = {
            enabled = true;
            shouldMention = "ENABLED";
            ignoreBlockedAndIgnored = true;
          };

          ReactErrorDecoder.enabled = true;
          ReadAllNotificationsButton.enabled = true;
          
          RelationshipNotifier = {
            enabled = true;
            notices = true;
            offlineRemovals = true;
            friends = true;
            friendRequestCancels = true;
            servers = true;
            groups = true;
          };

          ReplaceGoogleSearch = {
            enabled = true;
            customEngineName = "";
            customEngineURL = "";
            replacementEngine = "OFF";
          };

          ReplyTimestamp.enabled = true;
          RevealAllSpoilers.enabled = false;
          ReverseImageSearch.enabled = true;

          ReviewDB = {
            enabled = false;
            notifyReviews = true;
            showWarning = false;
            hideTimestamps = false;
            hideBlockedUsers = true;
          };

          RoleColorEverywhere = {
            enabled = true;
            chatMentions = true;
            memberList = true;
            voiceUsers = true;
            reactorsList = true;
            pollResults = true;
            colorChatMessages = true;
            messageSaturation = true;
          };

          SecretRingToneEnabler.enabled = true;

          SendTimestamps = {
            enabled = true;
            replaceMessageContents = true;
          };

          ServerInfo.enabled = true;
          
          ServerListIndicators = {
            enabled = true;
            mode = "BOTH";
          };

          Settings = {
            enabled = true;
            settingsLocation = "top";
            includeVencordInfoWhenCopying = "true";
          };

          ShikiCodeblocks = {
            enabled = true;
            #theme = "";
            #customTHeme = "";
            tryHljs = "Always";
            useDevIcon = "Color";
            bgOpacity = 75;
          };

          ShowAllMessageButtons.enabled = true;

          ShowConnections = {
            enabled = true;
            iconSize = 32;
            iconSpacing = "COMPACT";
          };

          ShowHiddenChannels = {
            enabled = true;
            hideUnreads = true;
            showMode = "LockIcon";
            defaultAllowedUsersAndRolesDropdownState = true;
          };

          ShowHiddenThings = {
            enabled = true;
            showTimeouts = true;
            showInvitesPaused = true;
            showModView = true;
          };

          ShowMeYourName = {
            enabled = true;
            mode = "nick-user";
            friendNicknames = "always";
            displayNames = false;
            inReplies = true;
          };

          ShowTimeoutDuration = {
            enabled = true;
            displayStyle = "Inline";
          };

          SilentMessageToggle = {
            enabled = true;
            persistState = false;
            autoDisable = true;
          };

          SilentTyping = {
            enabled = true;
            showIcon = true;
            contextMenu = true;
            isEnabled = true;
          };

          SortFriendRequests = {
            enabled = true;
            showDates = true;
          };

          SpotifyControls = {
            enabled = true;
            hoverControls = true;
            useSpotifyUris = false;
            previousButtonRestartsTrack = false;
          };

          SpotifyCrack = {
            enabled = true;
            noSpotifyAutoPause = true;
            keepSpotifyActivityOnIdle = true;
          };

          SpotifyShareCommands.enabled = true;
          StartupTimings.enabled = true;
          StickerPaste.enabled = true;
          StreamerModeOnStream.enabled = false;

          SuperReactionTweaks = {
            enabled = true;
            superReactByDefault = false;
            unlimitedSuperReactionPlaying = true;
            superReactionPlayingLimit = 10;
          };

          SupportHelper.enabled = false;
          TextReplace.enabled = false;
          ThemeAttributes.enabled = true;

          Translate = {
            enabled = true;
            receivedInput = "auto";
            receivedOutput = "en";
            sentInput = "auto";
            sentOutput = "en";
            service = "google";
            deeplApiKey = "";
            kagiSession = "";
            autoTranslate = false;
            showAutoTranslateTooltip = true;
          };

          TypingIndicator = {
            enabled = true;
            includeCurrentChannel = true;
            includeMutedChannels = false;
            includeIgnoredUsers = false;
            includeBlockedUsers = false;
            indicatorMode = 3;
          };

          TypingTweaks = {
            enabled = true;
            showAvatars = true;
            showRoleColors = true;
            alternativeFormatting = true;
          };

          Unindent.enabled = true;
          
          UnlockedAvatarZoom = {
            enabled = true;
            zoomMultiplier = 4;
          };

          UnsuppressEmbeds.enabled = true;

          UserMessagesPronouns = {
            enabled = true;
            pronounsFormat = "Lowercase";
            showSelf = true;
          };

          UserVoiceShow = {
            enabled = true;
            showInUserProfileModal = true;
            showInMemberList = true;
            showInMessages = true;
          };

          USRBG = {
            enabled = true;
            nitroFirst = "true";
            voiceBackground = true;
          };

          ValidReply.enabled = true;
          ValidUser.enabled = true;
          VcNarrator.enabled = true;

          VencordToolbox = {
            enabled = true;
            showPluginMenu = true;
          };

          ViewIcons = {
            enabled = true;
            format = "png";
            imgSize = "1024";
          };

          ViewRaw = {
            enabled = true;
            clickMethod = "Right";
            messageContext = true;
            sortKeys = true;
            stripSensitiveData = true;
          };

          VoiceChatDoubleClick.enabled = true;
          VoiceDownload.enabled = true;
          VoiceMessages.enabled = true;

          VolumeBooster = {
            enabled = true;
            multiplier = 2;
          };

          WebContextMenus = {
            enabled = true;
            addBack = true;
          };

          WebKeybinds = {
            enabled = true;
            showNavigationButtons = true;
            overrideCommonKeybinds = true;
          };

          WebPWA.enabled = true;
          WebRichPresence.enabled = true;

          WebScreenShare = {
            enabled = true;
            resolution = "1080";
            frameRate = "60";
            contentHint = "motion";
            systemAudio = true;
          };

          WebScreenShareFixes.enabled = true;

          WhoReacted = {
            enabled = true;
            clickableAvatars = true;
          };

          XSOverlay.enabled = false;
          YoutubeAdblock.enabled = true;
        };
      };

      extraQuickCss = "";
      themes = {};
      useSystem = false;
    };
  };
}
