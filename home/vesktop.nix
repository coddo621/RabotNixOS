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
        /**
 * @name The King in Yellow
 * @author OpenAI
 * @description Angular occult cyberpunk theme — toxic neon, antique gold and obsidian.
 * @version 1.0.0
 */

/* ==============================================
   I. THE PALETTE — THE YELLOW SIGN
   ============================================== */

:root {
  --kiy-void: #090b08;
  --kiy-black: #0d100b;
  --kiy-panel: #11150d;
  --kiy-raised: #171b10;
  --kiy-hover: #202612;
  --kiy-olive: #30351a;

  --kiy-acid: #dfff00;
  --kiy-acid-soft: #b6d936;
  --kiy-gold: #e6c15a;
  --kiy-sulfur: #fff38a;
  --kiy-ivory: #e8e4cf;
  --kiy-muted: #92947c;
  --kiy-danger: #ff685d;
  --kiy-success: #b8df61;

  --kiy-line: rgba(223, 255, 0, 0.20);
  --kiy-line-gold: rgba(230, 193, 90, 0.32);
  --kiy-glow: 0 0 8px rgba(223, 255, 0, 0.20);
  --kiy-glow-strong:
    0 0 5px rgba(223, 255, 0, 0.60),
    0 0 16px rgba(223, 255, 0, 0.18);

  --kiy-border: 1px solid var(--kiy-line);
  --kiy-radius: 3px;
  --kiy-transition: 160ms ease;

  color-scheme: dark;

  /* Discord theme variables */
  --font-primary: "Inter", "Segoe UI", sans-serif;
  --font-display: "Cinzel", "Georgia", serif;

  --background-primary: var(--kiy-black);
  --background-secondary: var(--kiy-panel);
  --background-secondary-alt: var(--kiy-void);
  --background-tertiary: var(--kiy-void);
  --background-floating: var(--kiy-panel);
  --background-accent: var(--kiy-olive);
  --background-modifier-hover: rgba(223, 255, 0, 0.07);
  --background-modifier-active: rgba(223, 255, 0, 0.12);
  --background-modifier-selected: rgba(223, 255, 0, 0.10);
  --background-modifier-accent: rgba(223, 255, 0, 0.14);
  --background-mentioned: rgba(230, 193, 90, 0.10);
  --background-mentioned-hover: rgba(230, 193, 90, 0.17);
  --background-message-hover: rgba(223, 255, 0, 0.035);

  --text-normal: var(--kiy-ivory);
  --text-primary: var(--kiy-ivory);
  --text-secondary: #b4b39a;
  --text-muted: var(--kiy-muted);
  --text-link: var(--kiy-acid);
  --text-brand: var(--kiy-acid);
  --header-primary: var(--kiy-ivory);
  --header-secondary: var(--kiy-muted);
  --interactive-normal: #c0c1a8;
  --interactive-hover: var(--kiy-acid);
  --interactive-active: var(--kiy-sulfur);
  --interactive-muted: #555a43;

  --brand-experiment: var(--kiy-acid);
  --brand-experiment-100: #f3ffc0;
  --brand-experiment-200: #eaff80;
  --brand-experiment-300: #e5ff4d;
  --brand-experiment-360: var(--kiy-acid);
  --brand-experiment-400: var(--kiy-acid);
  --brand-experiment-500: #b7d600;
  --brand-experiment-560: #718800;
  --brand-experiment-600: #4b5a13;
  --brand-experiment-700: #303a13;
  --brand-experiment-800: #20270e;
  --brand-experiment-900: #11150a;

  --scrollbar-auto-thumb: #454b2a;
  --scrollbar-auto-track: var(--kiy-void);
  --scrollbar-thin-thumb: #454b2a;
  --scrollbar-thin-track: transparent;
}

/* ==============================================
   II. GLOBAL FOUNDATION
   ============================================== */

.theme-dark,
.theme-darker,
.theme-amoled {
  --background-primary: var(--kiy-black);
  --background-secondary: var(--kiy-panel);
  --background-secondary-alt: var(--kiy-void);
  --background-tertiary: var(--kiy-void);
  --background-floating: var(--kiy-panel);
  --background-accent: var(--kiy-olive);
  --text-normal: var(--kiy-ivory);
  --text-primary: var(--kiy-ivory);
  --text-brand: var(--kiy-acid);
}

body {
  background: var(--kiy-void);
  color: var(--kiy-ivory);
}

::selection {
  background: rgba(223, 255, 0, 0.28);
  color: var(--kiy-sulfur);
}

a {
  color: var(--kiy-acid);
  text-decoration-color: rgba(223, 255, 0, 0.35);
}

a:hover {
  color: var(--kiy-sulfur);
  text-shadow: 0 0 7px rgba(223, 255, 0, 0.22);
}

:focus-visible {
  outline: 1px solid var(--kiy-acid) !important;
  outline-offset: 2px;
}

/* Subtle occult grid on the main app surface */
[class*="appMount"] {
  background-color: var(--kiy-void);
}

[class*="appMount"] [class*="base_"] {
  background:
    linear-gradient(rgba(223, 255, 0, 0.014) 1px, transparent 1px),
    linear-gradient(90deg, rgba(223, 255, 0, 0.014) 1px, transparent 1px),
    var(--kiy-void);
  background-size: 32px 32px;
}

/* ==============================================
   III. SERVER RAIL
   ============================================== */

[class*="guilds"] {
  background: var(--kiy-void);
  border-right: 1px solid var(--kiy-line);
}

[class*="guilds"] [class*="listItem"] {
  margin-block: 3px;
}

[class*="guilds"] [class*="wrapper"] {
  border-radius: var(--kiy-radius);
  transition:
    border-radius var(--kiy-transition),
    box-shadow var(--kiy-transition),
    filter var(--kiy-transition);
}

[class*="guilds"] [class*="wrapper"]:hover {
  border-radius: var(--kiy-radius);
  box-shadow: var(--kiy-glow);
}

[class*="guilds"] [class*="selected"] [class*="wrapper"],
[class*="guilds"] [class*="wrapper"][class*="selected"] {
  border-radius: var(--kiy-radius);
  box-shadow: inset 3px 0 var(--kiy-acid), var(--kiy-glow);
}

[class*="guilds"] [class*="pill"] [class*="item"] {
  background: var(--kiy-acid);
  border-radius: 0;
  box-shadow: 0 0 7px rgba(223, 255, 0, 0.55);
}

/* ==============================================
   IV. CHANNEL SIDEBAR
   ============================================== */

[class*="sidebar"] {
  background: var(--kiy-panel);
  border-right: 1px solid var(--kiy-line);
}

[class*="containerDefault"] [class*="name"],
[class*="containerDragAfter"] [class*="name"] {
  color: var(--kiy-muted);
  transition: color var(--kiy-transition);
}

[class*="containerDefault"]:hover [class*="name"] {
  color: var(--kiy-sulfur);
}

[class*="modeSelected"],
[class*="selected"] > [class*="content"],
[class*="channel"] [class*="modeSelected"] {
  background: rgba(223, 255, 0, 0.075) !important;
  border-left: 2px solid var(--kiy-acid);
  border-radius: 0;
  box-shadow: inset 5px 0 12px -10px var(--kiy-acid);
}

[class*="modeSelected"] [class*="name"],
[class*="modeSelected"] [class*="icon"] {
  color: var(--kiy-acid) !important;
}

[class*="containerDefault"]:hover > [class*="content"] {
  background: rgba(223, 255, 0, 0.045);
  border-radius: 0;
}

[class*="header"] [class*="name"],
[class*="sidebar"] [class*="header"] {
  color: var(--kiy-gold);
}

[class*="unread"],
[class*="mention"] {
  color: var(--kiy-acid);
}

/* ==============================================
   V. CHAT HEADER AND MESSAGES
   ============================================== */

[class*="chatContent"] {
  background: rgba(9, 11, 8, 0.82);
}

[class*="title"] {
  color: var(--kiy-ivory);
}

[class*="chatContent"] [class*="divider"] {
  border-color: var(--kiy-line);
}

[class*="messageListItem"] [class*="message"],
[class*="messageListItem"] [class*="contents"] {
  border-radius: 0;
}

[class*="messageListItem"]:hover [class*="message"],
[class*="messageListItem"]:hover [class*="contents"] {
  background: rgba(223, 255, 0, 0.025);
}

[class*="messageListItem"] [class*="username"] {
  color: var(--kiy-gold);
}

[class*="messageListItem"] [class*="timestamp"] {
  color: var(--kiy-muted);
}

[class*="mentioned"] {
  background: rgba(230, 193, 90, 0.09) !important;
  border-left: 2px solid var(--kiy-gold);
}

[class*="mentioned"]::before {
  background: var(--kiy-gold);
}

[class*="repliedMessage"] {
  border-left-color: var(--kiy-acid);
}

[class*="repliedMessage"] [class*="username"] {
  color: var(--kiy-sulfur);
}

[class*="markup"] code,
[class*="codeBlock"],
pre {
  background: #080a06 !important;
  border: 1px solid var(--kiy-line);
  border-radius: var(--kiy-radius);
  color: var(--kiy-sulfur);
}

[class*="embedFull"] {
  background: var(--kiy-panel);
  border-radius: 0;
  border: 1px solid var(--kiy-line);
}

[class*="attachment"] {
  border-radius: var(--kiy-radius);
}

[class*="reaction"] {
  background: var(--kiy-panel);
  border: 1px solid rgba(223, 255, 0, 0.12);
  border-radius: var(--kiy-radius);
}

[class*="reaction"][class*="reactionMe"] {
  background: rgba(223, 255, 0, 0.10);
  border-color: var(--kiy-acid);
  box-shadow: var(--kiy-glow);
}

/* ==============================================
   VI. COMPOSER AND INPUTS
   ============================================== */

[class*="form"] [class*="channelTextArea"],
[class*="channelTextArea"] {
  background: #0b0e08;
  border: 1px solid var(--kiy-line);
  border-radius: var(--kiy-radius);
  transition: border-color var(--kiy-transition), box-shadow var(--kiy-transition);
}

[class*="channelTextArea"]:focus-within {
  border-color: rgba(223, 255, 0, 0.70);
  box-shadow: inset 0 0 0 1px rgba(223, 255, 0, 0.07),
              0 0 12px rgba(223, 255, 0, 0.07);
}

[class*="placeholder"] {
  color: #797d63 !important;
}

input,
textarea,
[class*="input"] {
  accent-color: var(--kiy-acid);
}

[class*="buttons"] [class*="button"]:hover,
[class*="icon"]:hover {
  color: var(--kiy-acid);
}

/* ==============================================
   VII. BUTTONS AND INTERACTIVE CONTROLS
   ============================================== */

button {
  border-radius: var(--kiy-radius);
  transition:
    background var(--kiy-transition),
    border-color var(--kiy-transition),
    box-shadow var(--kiy-transition);
}

[class*="lookFilled"][class*="colorBrand"],
[class*="button"][class*="colorBrand"] {
  color: #101207;
  background: var(--kiy-acid);
  border: 1px solid var(--kiy-acid);
  border-radius: var(--kiy-radius);
}

[class*="lookFilled"][class*="colorBrand"]:hover,
[class*="button"][class*="colorBrand"]:hover {
  background: var(--kiy-sulfur);
  box-shadow: var(--kiy-glow-strong);
}

[class*="lookOutlined"] {
  border-radius: var(--kiy-radius);
  border-color: var(--kiy-line-gold);
}

[class*="lookOutlined"]:hover {
  border-color: var(--kiy-acid);
  box-shadow: var(--kiy-glow);
}

[class*="lookLink"] {
  color: var(--kiy-acid);
}

/* ==============================================
   VIII. MEMBERS, AVATARS AND STATUS
   ============================================== */

[class*="membersWrap"],
[class*="member"] [class*="childContainer"] {
  background: var(--kiy-panel);
}

[class*="member"] [class*="container"]:hover {
  background: rgba(223, 255, 0, 0.05);
  border-radius: var(--kiy-radius);
}

[class*="member"] [class*="username"] {
  color: var(--kiy-ivory);
}

[class*="online"] {
  color: var(--kiy-success);
}

[class*="idle"] {
  color: var(--kiy-gold);
}

[class*="offline"] {
  color: #696d5b;
}

[class*="role"] {
  border-radius: 2px;
}

/* ==============================================
   IX. POPOUTS, MENUS AND MODALS
   ============================================== */

[class*="menu"],
[class*="popout"],
[class*="tooltip"],
[class*="autocomplete"] {
  background-color: var(--kiy-panel);
  border: 1px solid var(--kiy-line);
  border-radius: var(--kiy-radius);
  box-shadow: 0 8px 28px rgba(0, 0, 0, 0.50);
}

[class*="menuItem"]:hover,
[class*="focused"] {
  background: rgba(223, 255, 0, 0.09) !important;
  color: var(--kiy-sulfur);
  border-radius: 0;
}

[class*="modal"],
[class*="root"] > [class*="content"] {
  border-radius: var(--kiy-radius);
}

[class*="backdrop"] {
  background: rgba(0, 0, 0, 0.78) !important;
  backdrop-filter: blur(3px);
}

[class*="userPopout"],
[class*="userProfile"] {
  border: 1px solid var(--kiy-line-gold);
  border-radius: var(--kiy-radius);
}

/* ==============================================
   X. SETTINGS, SEARCH AND TABS
   ============================================== */

[class*="standardSidebarView"],
[class*="contentRegion"],
[class*="sidebarRegion"] {
  background: var(--kiy-black);
}

[class*="tabBar"] [role="tab"] {
  border-radius: 0;
}

[class*="tabBar"] [aria-selected="true"] {
  color: var(--kiy-acid) !important;
  border-bottom: 2px solid var(--kiy-acid);
  box-shadow: 0 4px 10px -7px var(--kiy-acid);
}

[class*="searchBar"],
[class*="searchResultsWrap"] {
  background: var(--kiy-panel);
  border: 1px solid var(--kiy-line);
  border-radius: var(--kiy-radius);
}

[class*="searchResult"] {
  border-left: 1px solid transparent;
}

[class*="searchResult"]:hover {
  border-left-color: var(--kiy-acid);
}

/* ==============================================
   XI. VOICE AND VIDEO
   ============================================== */

[class*="voiceUser"],
[class*="voiceChannel"] {
  border-radius: var(--kiy-radius);
}

[class*="voiceUser"] [class*="avatarSpeaking"],
[class*="avatarSpeaking"] {
  box-shadow: 0 0 0 2px var(--kiy-acid),
              0 0 12px rgba(223, 255, 0, 0.48);
}

[class*="videoWrapper"],
[class*="tile"] {
  border-radius: var(--kiy-radius);
  border: 1px solid rgba(223, 255, 0, 0.08);
  overflow: hidden;
}

[class*="controlButton"] {
  border-radius: var(--kiy-radius);
}

[class*="controlButton"]:hover {
  color: var(--kiy-acid);
  box-shadow: var(--kiy-glow);
}

/* ==============================================
   XII. SCROLLBARS AND FINISHING DETAILS
   ============================================== */

::-webkit-scrollbar {
  width: 7px;
  height: 7px;
}

::-webkit-scrollbar-track {
  background: var(--kiy-void);
}

::-webkit-scrollbar-thumb {
  background: #454b2a;
  border-radius: 0;
}

::-webkit-scrollbar-thumb:hover {
  background: var(--kiy-acid-soft);
}

hr {
  border-color: var(--kiy-line);
}

[class*="separator"] {
  border-color: var(--kiy-line);
}

[class*="bar"] [class*="barFill"] {
  background: var(--kiy-acid);
}

[class*="checked"] {
  accent-color: var(--kiy-acid);
}

/* ==============================================
   XIII. REDUCED MOTION
   ============================================== */

@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
      '';
    };
  };
}
