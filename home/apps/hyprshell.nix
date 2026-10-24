{ pkgs, ... }:

{
  services.hyprshell = {
    enable = true;
    package = pkgs.hyprshell;
    settings = {
      windows = {
        scale = 8.0;

        overview = {
          launcher = {
            max_items = 6;
          };
        };

        switch = {
          modifier = "alt";
        };
      };
    };
    style = ''
      /* Olive theme — adapted from your Wofi setup */

      :root {
        --bg: #353c27;
        --bg-input: #24291d;
        --bg-surface: #2d3322;
        --bg-entry: #363d28;
        --bg-selected: #626b3d;
        --bg-hover: #4b5432;

        --text: #d6d8b8;
        --text-primary: #e2e5c4;
        --text-muted: #a4a889;
        --text-selected: #f0f0d0;

        --border: #78805a;
        --border-active: #a0a879;
        --border-focus: #b0b78a;

        --font: "DejaVu Sans";
      }

      * {
        font-family: "DejaVu Sans", sans-serif;
        font-size: 13px;
      }

      /* Main surfaces */
      window,
      .window,
      .overview,
      .switch {
        background-color: var(--bg);
        color: var(--text);
        border: 2px solid var(--border);
      }

      /* General containers */
      .container,
      .content {
        background-color: var(--bg);
        color: var(--text);
        padding: 8px;
      }

      /* Search input */
      entry,
      .search,
      .input {
        background-color: var(--bg-input);
        color: var(--text-primary);
        border: 1px solid var(--border);
        border-radius: 0;
        padding: 8px;
        margin: 4px;
      }

      entry:focus,
      .search:focus,
      .input:focus {
        border-color: var(--border-focus);
        outline: none;
      }

      /* Cards and entries */
      .item,
      .entry,
      .window-item,
      .workspace-item {
        background-color: var(--bg-entry);
        color: #c5c9a4;
        border: 1px solid transparent;
        border-radius: 0;
        padding: 7px 8px;
        margin: 1px 0;
      }

      /* Selected item */
      .item:selected,
      .entry:selected,
      .window-item:selected,
      .workspace-item:selected,
      .selected {
        background-color: var(--bg-selected);
        color: var(--text-selected);
        border: 1px solid var(--border-active);
      }

      /* Hover */
      .item:hover,
      .entry:hover,
      .window-item:hover,
      .workspace-item:hover {
        background-color: var(--bg-hover);
        color: #ffffff;
      }

      /* Text and secondary labels */
      label,
      .title {
        color: var(--text);
      }

      .subtitle,
      .description,
      .muted {
        color: var(--text-muted);
      }

      /* Icons */
      image,
      .icon {
        margin-right: 8px;
      }
    '';
  };
}