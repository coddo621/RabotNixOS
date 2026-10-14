{ pkgs, ... }:

{
  programs.btop = {
    enable = true;
    package = pkgs.btop;
    themes = {
      steam = ''
        theme[main_bg]="#293021"
        theme[main_fg]="#D4D7C0"
        theme[title]="#E0E2CE"
        theme[hi_fg]="#A5B078"
        theme[selected_bg]="#697343"
        theme[selected_fg]="#F0F0D8"
        theme[inactive_fg]="#777C61"
        theme[graph_text]="#C4C9A7"
        theme[meter_bg]="#454B35"
        theme[proc_misc]="#A5AD75"
        theme[cpu_box]="#858F50"
        theme[mem_box]="#737D45"
        theme[net_box]="#92996A"
        theme[proc_box]="#687345"
        theme[div_line]="#555B3C"
        theme[temp_start]="#777C45"
        theme[temp_mid]="#A5AD75"
        theme[temp_end]="#C2C58A"
        theme[cpu_start]="#555D35"
        theme[cpu_mid]="#858F50"
        theme[cpu_end]="#B0B982"
        theme[free_start]="#A5AD75"
        theme[free_mid]="#858F50"
        theme[free_end]="#687345"
        theme[cached_start]="#646B50"
        theme[cached_mid]="#828B60"
        theme[cached_end]="#A5AD75"
        theme[available_start]="#B8BE96"
        theme[available_mid]="#92996A"
        theme[available_end]="#737D45"
        theme[used_start]="#555D35"
        theme[used_mid]="#858F50"
        theme[used_end]="#B0B982"
        theme[download_start]="#687345"
        theme[download_mid]="#92996A"
        theme[download_end]="#C2C58A"
        theme[upload_start]="#50563B"
        theme[upload_mid]="#777C45"
        theme[upload_end]="#A5AD75"
        theme[process_start]="#687345"
        theme[process_mid]="#92996A"
        theme[process_end]="#B0B982"
      '';
    };

    settings = {
      color_theme = "steam";
      theme_background = true;
      truecolor = true;
      force_tty = false;
      presets = "cpu:1:default,proc:0:default cpu:0:default,mem:0:default,net:0:default cpu:0:block,net:0:tty";
      vim_keys = false;
      rounded_corners = true;
      terminal_sync = true;
      graph_symbol = "block";
      graph_symbol_cpu = "default";
      graph_symbol_mem = "default";
      graph_symbol_net = "default";
      graph_symbol_proc = "default";
      shown_boxes = "cpu mem net proc";
      update_ms = 2000;
      proc_sorting = "cpu lazy";
      proc_reversed = false;
      proc_tree = false;
      proc_colors = true;
      proc_gradient = true;
      proc_per_core = false;
      proc_mem_bytes = true;
      proc_cpu_graphs = true;
      proc_info_smaps = false;
      proc_left = false;
    };
  };
}