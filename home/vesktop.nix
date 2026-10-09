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
        /* =========================================================
   THE KING IN YELLOW — DISCORD QUICK CSS
   Palette: Tarnished Gold / Pallid Yellow / Black / Parchment
   Style: Angular, square, theatrical, uncanny
   ========================================================= */

:root {
  --kiy-black: #0b0a08;
  --kiy-shadow: #12100b;
  --kiy-panel: #19160e;
  --kiy-panel-light: #211c10;
  --kiy-gold: #c4a747;
  --kiy-yellow: #e8d477;
  --kiy-pale: #f0e6b8;
  --kiy-muted: #8f8254;
  --kiy-border: #67562b;
  --kiy-red: #9d3d2e;

  --background-primary: var(--kiy-black);
  --background-secondary: var(--kiy-shadow);
  --background-secondary-alt: #100e09;
  --background-tertiary: #080706;
  --background-accent: #393019;
  --background-floating: #15120b;
  --background-modifier-hover: #292213;
  --background-modifier-active: #3a2f17;
  --background-modifier-selected: #332914;
  --background-modifier-accent: #42351b;

  --text-normal: var(--kiy-pale);
  --text-muted: var(--kiy-muted);
  --text-link: var(--kiy-yellow);
  --header-primary: var(--kiy-yellow);
  --header-secondary: #a99a65;
  --interactive-normal: #b6a56c;
  --interactive-hover: var(--kiy-yellow);
  --interactive-active: #fff0a3;
  --interactive-muted: #51472b;

  --brand-experiment: var(--kiy-gold);
  --brand-experiment-560: #a78b35;
  --brand-experiment-600: #806723;
  --brand-experiment-100: #fff0a3;

  --button-secondary-background: #292213;
  --button-secondary-background-hover: #42351b;
  --button-secondary-text: var(--kiy-pale);

  --input-background: #100e09;
  --input-border: var(--kiy-border);
  --focus-primary: var(--kiy-gold);

  --radius-xs: 0px;
  --radius-sm: 0px;
  --radius-md: 0px;
  --radius-lg: 0px;
  --radius-xl: 0px;
  --radius-2xs: 0px;
  --radius-round: 0px;
}

/* --- SQUARE OFF THE ENTIRE INTERFACE --- */

* {
  border-radius: 0px !important;
}

/* --- THE VOID: MAIN BACKGROUNDS --- */

body,
.appMount__51fd7,
.app__160d8,
.bg__960e4,
[class*="app_"],
[class*="chatContent_"],
[class*="chat_"],
[class*="container_"] {
  background-color: var(--kiy-black);
}

/* --- SERVERS: BLACK OBSIDIAN WITH GOLD ACCENTS --- */

[class*="guilds_"] {
  background: #080706 !important;
  border-right: 1px solid var(--kiy-border);
}

[class*="guild_"] {
  transition: filter 160ms ease, transform 160ms ease;
}

[class*="guild_"]:hover {
  filter: brightness(1.35);
}

[class*="selected_"] [class*="childWrapper_"],
[class*="wrapper_"]:hover [class*="childWrapper_"] {
  background: var(--kiy-panel-light) !important;
  color: var(--kiy-yellow) !important;
}

/* --- CHANNEL SIDEBAR: PARCHMENT IN THE SHADOWS --- */

[class*="sidebar_"] {
  background: #100e09 !important;
  border-right: 1px solid var(--kiy-border);
}

[class*="sidebar_"] [class*="modeSelected_"],
[class*="sidebar_"] [class*="selected_"] {
  background: #302613 !important;
  box-shadow: inset 3px 0 var(--kiy-gold);
}

[class*="sidebar_"] [class*="link_"]:hover {
  background: #211b0e !important;
}

[class*="sidebar_"] [class*="name_"] {
  letter-spacing: 0.3px;
}

[class*="containerDefault_"] [class*="icon_"] {
  color: var(--kiy-muted);
}

/* --- TOP BAR: THE YELLOW SIGN --- */

[class*="title_"],
[class*="header_"] {
  background-color: #0d0b08;
  border-bottom: 1px solid var(--kiy-border);
}

[class*="title_"] [class*="children_"] {
  color: var(--kiy-yellow);
}

/* --- CHAT: BLACK STAGE, GOLDEN TYPOGRAPHY --- */

[class*="chatContent_"],
[class*="messagesWrapper_"] {
  background-color: #0b0a08 !important;
}

[class*="messageListItem_"] {
  background: transparent !important;
}

[class*="messageListItem_"]:hover {
  background: #17130b !important;
}

[class*="message_"] {
  border-left: 2px solid transparent;
}

[class*="message_"]:hover {
  border-left-color: #76602b;
}

[class*="username_"] {
  color: var(--kiy-yellow) !important;
}

[class*="timestamp_"] {
  color: #776c4a !important;
}

[class*="markup_"] {
  color: #ddd2a7;
  line-height: 1.55;
}

[class*="replying_"] {
  background: #292111 !important;
}

[class*="mentioned_"] {
  background: #3a2b10 !important;
}

[class*="mentioned_"]::before {
  background: var(--kiy-yellow) !important;
}

/* --- COMPOSER: THE BLACK BOOK --- */

[class*="form_"] {
  background: #0b0a08 !important;
}

[class*="channelTextArea_"],
[class*="scrollableContainer_"] {
  background: #151209 !important;
  border: 1px solid var(--kiy-border) !important;
  box-shadow: inset 0 0 0 1px #000;
}

[class*="channelTextArea_"]:focus-within,
[class*="scrollableContainer_"]:focus-within {
  border-color: var(--kiy-gold) !important;
  box-shadow: 0 0 8px #c4a74718;
}

[class*="placeholder_"] {
  color: #8e8154 !important;
}

/* --- BUTTONS: HARD EDGES, OLD GOLD --- */

button,
[class*="button_"] {
  border-radius: 0 !important;
  transition: background 120ms ease, color 120ms ease;
}

[class*="lookFilled_"][class*="colorBrand_"] {
  background: #806723 !important;
  color: #fff0b2 !important;
  border: 1px solid var(--kiy-gold) !important;
}

[class*="lookFilled_"][class*="colorBrand_"]:hover {
  background: #a78b35 !important;
  color: #080706 !important;
}

[class*="lookOutlined_"] {
  border: 1px solid var(--kiy-border) !important;
}

/* --- MEMBERS LIST --- */

[class*="members_"],
[class*="member_"] {
  background: #0e0c08 !important;
}

[class*="member_"]:hover {
  background: #211b0e !important;
}

[class*="member_"] [class*="username_"] {
  color: #d4c58f !important;
}

/* --- PANELS, POPOUTS & MENUS --- */

[class*="menu_"],
[class*="popout_"],
[class*="layer_"] [class*="root_"],
[class*="modal_"] {
  background: #151209 !important;
  border: 1px solid var(--kiy-border) !important;
  box-shadow: 5px 5px 0 #00000080 !important;
}

[class*="item_"]:hover {
  background: #302613 !important;
}

[class*="separator_"] {
  background: var(--kiy-border) !important;
}

/* --- SETTINGS: THE KING'S ARCHIVE --- */

[class*="standardSidebarView_"],
[class*="contentRegion_"],
[class*="sidebarRegion_"] {
  background: #0b0a08 !important;
}

[class*="contentColumn_"] {
  background: #100e09;
}

input,
textarea,
[class*="input_"] {
  border-radius: 0 !important;
  background: #100e09 !important;
  border: 1px solid var(--kiy-border) !important;
  color: var(--kiy-pale) !important;
}

input:focus,
textarea:focus,
[class*="input_"]:focus-within {
  border-color: var(--kiy-yellow) !important;
}

/* --- DIVIDERS & SCROLLBARS --- */

[class*="divider_"],
[class*="separator_"] {
  border-color: var(--kiy-border) !important;
}

::-webkit-scrollbar {
  width: 7px !important;
  height: 7px !important;
}

::-webkit-scrollbar-track {
  background: #080706 !important;
}

::-webkit-scrollbar-thumb {
  background: #655326 !important;
  border: 1px solid #080706;
}

::-webkit-scrollbar-thumb:hover {
  background: var(--kiy-gold) !important;
}

/* --- SELECTION: THE PALE MASK --- */

::selection {
  background: #a78b35 !important;
  color: #080706 !important;
}

/* --- SUBTLE SUPERNATURAL GOLD GLOW --- */

[class*="modeSelected_"] [class*="name_"],
[class*="tabBar_"] [class*="selected_"] {
  color: var(--kiy-yellow) !important;
}

a {
  color: var(--kiy-yellow);
}

a:hover {
  color: #fff1a6;
}

/* --- END: DO NOT SPEAK THE KING'S NAME --- */
      '';
    };
  };
}
