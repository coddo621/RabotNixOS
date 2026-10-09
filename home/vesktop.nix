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
        /* ============================================================
   THE KING IN YELLOW — COMPLETE DISCORD QUICK CSS
   Vibe: The Yellow Sign / Forbidden Theatre / Decaying Royalty
   Palette: Black, Ochre, Antique Gold, Pallid Yellow
   Geometry: Square, Angular, Hard Edges
   ============================================================ */

/* ===================== COLOR SYSTEM ======================== */

:root {
  --kiy-black: #090805;
  --kiy-void: #0e0c06;
  --kiy-dark: #151207;
  --kiy-panel: #201907;
  --kiy-panel-hover: #30250b;
  --kiy-ochre: #493713;
  --kiy-gold-dark: #70551b;
  --kiy-gold: #b59435;
  --kiy-yellow: #e2ca64;
  --kiy-pale: #f5e9ad;
  --kiy-muted: #a0915b;
  --kiy-red: #853d29;

  /* Discord backgrounds */
  --background-primary: #0e0c06 !important;
  --background-secondary: #151207 !important;
  --background-secondary-alt: #110e06 !important;
  --background-tertiary: #090805 !important;
  --background-floating: #1c1608 !important;
  --background-accent: #493713 !important;

  --background-modifier-hover: #30250b !important;
  --background-modifier-active: #493713 !important;
  --background-modifier-selected: #3b2d0c !important;
  --background-modifier-accent: #70551b !important;

  /* Text */
  --text-normal: #e8dca4 !important;
  --text-muted: #a0915b !important;
  --text-link: #e2ca64 !important;
  --header-primary: #f5e9ad !important;
  --header-secondary: #b8a56a !important;

  /* Interactive states */
  --interactive-normal: #b59435 !important;
  --interactive-hover: #e2ca64 !important;
  --interactive-active: #fff0a3 !important;
  --interactive-muted: #64532a !important;

  /* Brand and buttons */
  --brand-experiment: #9d7925 !important;
  --brand-experiment-100: #fff0a3 !important;
  --brand-experiment-200: #f5e9ad !important;
  --brand-experiment-360: #e2ca64 !important;
  --brand-experiment-500: #b59435 !important;
  --brand-experiment-560: #8c6b20 !important;
  --brand-experiment-600: #70551b !important;

  --button-secondary-background: #30250b !important;
  --button-secondary-background-hover: #493713 !important;
  --button-secondary-text: #f5e9ad !important;

  --input-background: #100d05 !important;
  --input-border: #70551b !important;
  --focus-primary: #e2ca64 !important;

  /* Square geometry */
  --radius-xs: 0px !important;
  --radius-sm: 0px !important;
  --radius-md: 0px !important;
  --radius-lg: 0px !important;
  --radius-xl: 0px !important;
  --radius-2xs: 0px !important;
  --radius-round: 0px !important;
}

/* ===================== GLOBAL SHAPE ======================== */

* {
  border-radius: 0px !important;
}

::selection {
  background: #b59435 !important;
  color: #090805 !important;
}

/* ===================== MAIN APPLICATION ==================== */

body,
html,
#app-mount,
[class*="appMount"],
[class*="app_"],
[class*="bg_"],
[class*="layers_"],
[class*="layer_"],
[class*="base_"] {
  background-color: var(--kiy-black) !important;
}

/* ===================== SERVER LIST ========================= */

[class*="guilds_"],
[class*="wrapper_"][class*="guilds"],
nav[class*="guilds"] {
  background: #090805 !important;
  border-right: 2px solid var(--kiy-gold-dark) !important;
}

/* Server hover and selection */
[class*="guilds_"] [class*="wrapper_"]:hover,
[class*="guilds_"] [class*="wrapper_"][class*="selected"] {
  background: var(--kiy-panel-hover) !important;
}

/* Home / server icon containers */
[class*="guilds_"] [class*="childWrapper_"],
[class*="guilds_"] [class*="circleIconButton_"] {
  background: #201907 !important;
  color: var(--kiy-gold) !important;
}

[class*="guilds_"] [class*="childWrapper_"]:hover,
[class*="guilds_"] [class*="circleIconButton_"]:hover {
  background: #493713 !important;
  color: var(--kiy-pale) !important;
}

/* Selected server indicator */
[class*="guilds_"] [class*="pill_"] span {
  background: var(--kiy-yellow) !important;
}

/* ===================== CHANNEL SIDEBAR ===================== */

[class*="sidebar_"],
[class*="sidebarList_"],
[class*="privateChannels_"],
[class*="scroller_"][class*="thin"] {
  background-color: #151207 !important;
}

/* Server header */
[class*="header_"][class*="guild"],
[class*="header_"][class*="container_"] {
  background: #201907 !important;
  border-bottom: 1px solid var(--kiy-gold-dark) !important;
}

/* Channel rows */
[class*="containerDefault_"],
[class*="containerDragAfter_"],
[class*="containerDragBefore_"] {
  background: transparent !important;
}

[class*="containerDefault_"]:hover {
  background: #30250b !important;
}

[class*="modeSelected_"],
[class*="selected_"][class*="container_"] {
  background: #493713 !important;
  box-shadow: inset 3px 0 0 var(--kiy-yellow) !important;
}

[class*="modeSelected_"] [class*="name_"],
[class*="modeSelected_"] [class*="icon_"] {
  color: var(--kiy-pale) !important;
}

[class*="modeUnread_"] [class*="name_"] {
  color: var(--kiy-yellow) !important;
}

[class*="sidebar_"] [class*="name_"] {
  color: #c0ae70;
}

[class*="sidebar_"] [class*="icon_"] {
  color: var(--kiy-muted);
}

/* Channel category labels */
[class*="wrapper_"] [class*="name_"],
[class*="header_"] [class*="name_"] {
  color: var(--kiy-gold) !important;
}

/* ===================== CHAT BACKGROUND ====================== */

[class*="chat_"],
[class*="chatContent_"],
[class*="content_"],
[class*="messagesWrapper_"],
[class*="scrollerContent_"],
[class*="form_"],
[class*="chatContent_"] [class*="scroller_"] {
  background-color: #0e0c06 !important;
}

/* Chat title bar */
[class*="title_"],
[class*="children_"][class*="header"],
[class*="toolbar_"] {
  background-color: #151207 !important;
}

[class*="title_"] {
  border-bottom: 1px solid var(--kiy-gold-dark) !important;
}

/* Message hover */
[class*="messageListItem_"]:hover,
[class*="message_"]:hover {
  background-color: #201907 !important;
}

/* Message text */
[class*="markup_"] {
  color: #e8dca4 !important;
  line-height: 1.55;
}

[class*="username_"] {
  color: var(--kiy-yellow) !important;
}

[class*="timestamp_"] {
  color: var(--kiy-muted) !important;
}

/* Reply and mention backgrounds */
[class*="replying_"] {
  background: #30250b !important;
}

[class*="mentioned_"] {
  background: #493713 !important;
}

[class*="mentioned_"]::before {
  background: var(--kiy-yellow) !important;
}

/* Message separators */
[class*="divider_"] {
  border-color: var(--kiy-gold-dark) !important;
}

/* ===================== MESSAGE COMPOSER ==================== */

[class*="channelTextArea_"],
[class*="scrollableContainer_"] {
  background: #201907 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
  box-shadow: inset 0 0 0 1px #090805 !important;
}

[class*="channelTextArea_"]:focus-within,
[class*="scrollableContainer_"]:focus-within {
  background: #30250b !important;
  border-color: var(--kiy-yellow) !important;
}

[class*="placeholder_"] {
  color: var(--kiy-muted) !important;
}

/* Composer icons */
[class*="attachButton_"] svg,
[class*="buttons_"] svg,
[class*="channelTextArea_"] svg {
  color: var(--kiy-gold) !important;
}

/* ===================== MEMBERS LIST ======================== */

[class*="membersWrap_"],
[class*="members_"],
[class*="member_"] {
  background: #151207 !important;
}

[class*="member_"]:hover,
[class*="selected_"][class*="member_"] {
  background: #30250b !important;
}

[class*="membersGroup_"] {
  color: var(--kiy-gold) !important;
}

/* ===================== BUTTONS ============================ */

button,
[class*="button_"] {
  border-radius: 0 !important;
}

[class*="lookFilled_"][class*="colorBrand_"] {
  background: #80621d !important;
  color: #fff0b2 !important;
  border: 1px solid var(--kiy-gold) !important;
}

[class*="lookFilled_"][class*="colorBrand_"]:hover {
  background: #b59435 !important;
  color: #090805 !important;
}

[class*="lookOutlined_"] {
  background: #201907 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
  color: var(--kiy-yellow) !important;
}

[class*="lookOutlined_"]:hover {
  background: #493713 !important;
  border-color: var(--kiy-yellow) !important;
}

/* ===================== ICONS & TOOLBAR ===================== */

[class*="toolbar_"] {
  background: #151207 !important;
}

[class*="toolbar_"] button,
[class*="iconWrapper_"],
[class*="iconWrapper_"] svg {
  color: var(--kiy-gold) !important;
}

[class*="toolbar_"] button:hover,
[class*="iconWrapper_"]:hover {
  background: #493713 !important;
  color: var(--kiy-pale) !important;
}

/* General interactive SVG icons */
[class*="sidebar_"] svg,
[class*="title_"] svg,
[class*="toolbar_"] svg {
  color: var(--kiy-gold);
}

/* ===================== SEARCH ============================== */

[class*="searchBar_"],
[class*="search_"] [class*="searchBar_"] {
  background: #201907 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
}

[class*="searchBar_"]:focus-within {
  background: #30250b !important;
  border-color: var(--kiy-yellow) !important;
}

[class*="searchBar_"] svg {
  color: var(--kiy-yellow) !important;
}

/* ===================== SETTINGS ============================ */

[class*="standardSidebarView_"],
[class*="sidebarRegion_"],
[class*="contentRegion_"],
[class*="contentColumn_"],
[class*="settingsPage_"],
[class*="userSettings_"] {
  background: #0e0c06 !important;
}

[class*="sidebarRegion_"] [class*="item_"] {
  color: #bba96d !important;
}

[class*="sidebarRegion_"] [class*="item_"]:hover {
  background: #30250b !important;
  color: var(--kiy-pale) !important;
}

[class*="sidebarRegion_"] [class*="selected_"] {
  background: #493713 !important;
  color: var(--kiy-yellow) !important;
}

[class*="contentRegion_"] [class*="section_"] {
  border-color: var(--kiy-gold-dark) !important;
}

/* Inputs */
input,
textarea,
[class*="input_"] {
  background: #100d05 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
  color: var(--kiy-pale) !important;
}

input:focus,
textarea:focus,
[class*="input_"]:focus-within {
  border-color: var(--kiy-yellow) !important;
}

/* ===================== MENUS & POPOUTS ===================== */

[class*="menu_"],
[class*="menu_"] [role="menu"],
[class*="submenu_"],
[class*="popout_"],
[class*="select_"],
[class*="autocomplete_"],
[class*="listbox_"] {
  background: #201907 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
  box-shadow: 5px 5px 0 #00000099 !important;
}

[class*="menu_"] [class*="item_"]:hover,
[class*="menu_"] [role="menuitem"]:hover,
[class*="option_"]:hover {
  background: #493713 !important;
  color: var(--kiy-pale) !important;
}

[class*="separator_"] {
  background: var(--kiy-gold-dark) !important;
}

/* ===================== MODALS & DIALOGS ==================== */

[class*="modal_"],
[class*="root_"][class*="modal"],
[class*="layer_"] [class*="root_"] {
  background: #151207 !important;
  border: 1px solid var(--kiy-gold) !important;
  box-shadow: 7px 7px 0 #00000099 !important;
}

[class*="footer_"] {
  background: #100d05 !important;
  border-top: 1px solid var(--kiy-gold-dark) !important;
}

/* ===================== TOOLTIPS =========================== */

[class*="tooltip_"] {
  background: #493713 !important;
  color: var(--kiy-pale) !important;
  border: 1px solid var(--kiy-yellow) !important;
}

/* ===================== NOTIFICATIONS ======================= */

[class*="numberBadge_"],
[class*="mentionsBadge_"] {
  background: var(--kiy-yellow) !important;
  color: #090805 !important;
}

[class*="unreadPill_"] {
  background: var(--kiy-yellow) !important;
  color: #090805 !important;
}

[class*="unread_"] {
  background: var(--kiy-yellow) !important;
}

/* ===================== SWITCHES & CHECKBOXES =============== */

[class*="checked_"][class*="switch_"],
[class*="checked_"][class*="checkbox_"] {
  background-color: #a88729 !important;
}

[class*="switch_"] [class*="slider_"] {
  border-radius: 0 !important;
}

input[type="checkbox"] {
  accent-color: var(--kiy-gold) !important;
}

/* ===================== LINKS & TEXT ======================== */

a,
[class*="anchor_"] {
  color: var(--kiy-yellow) !important;
}

a:hover,
[class*="anchor_"]:hover {
  color: #fff0a3 !important;
}

[class*="header_"] {
  color: var(--kiy-pale);
}

/* ===================== SCROLLBARS ========================== */

::-webkit-scrollbar {
  width: 8px !important;
  height: 8px !important;
}

::-webkit-scrollbar-track {
  background: #090805 !important;
}

::-webkit-scrollbar-thumb {
  background: #70551b !important;
  border: 1px solid #090805 !important;
}

::-webkit-scrollbar-thumb:hover {
  background: #b59435 !important;
}

/* ===================== PROFILE PANELS ====================== */

[class*="userPopout_"],
[class*="userProfileModal_"],
[class*="outer_"][class*="userProfile"] {
  background: #151207 !important;
  border: 1px solid var(--kiy-gold-dark) !important;
}

[class*="userPopout_"] [class*="overlayBackground_"] {
  background: #201907 !important;
}

/* ===================== FRIENDS & DM HOME =================== */

[class*="privateChannels_"] {
  background: #151207 !important;
}

[class*="peopleColumn_"],
[class*="nowPlayingColumn_"] {
  background: #0e0c06 !important;
}

[class*="peopleListItem_"] {
  background: #151207 !important;
  border-bottom: 1px solid #30250b !important;
}

[class*="peopleListItem_"]:hover {
  background: #30250b !important;
}

/* ===================== FINAL COLOR ENFORCEMENT ============= */

/* Discord components often use opaque backgrounds of their own.
   This reinforces the main panel colors without flattening
   every individual element into the same shade. */

[class*="sidebar_"] {
  background-color: #151207 !important;
}

[class*="chat_"] {
  background-color: #0e0c06 !important;
}

[class*="membersWrap_"] {
  background-color: #151207 !important;
}

[class*="guilds_"] {
  background-color: #090805 !important;
}

[class*="title_"] {
  background-color: #201907 !important;
}

[class*="channelTextArea_"] {
  background-color: #201907 !important;
}

/* The Yellow Sign is seen. The King is waiting. */
      '';
    };
  };
}
