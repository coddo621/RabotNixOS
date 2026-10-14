{ pkgs, ... }:

{
  programs.btop = {
    enable = true;
    package = pkgs.btop;
    themes = {
      king_in_yellow = ''
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
      color_theme = "king_in_yellow";
    };
  };
}