{ pkgs, ... }:

{
  programs.wofi = {
    enable = true;
    package = pkgs.wofi;
    style = ''
      * {
        font-family: "DejaVu Sans", sans-serif;
        font-size: 13px;
        border-radius: 0;
      }

      window {
        background-color: #353c27;
        color: #d6d8b8;
        border: 2px solid #78805a;
      }

      #outer-box {
        padding: 8px;
        background-color: #353c27;
      }

      #input {
        margin: 4px 4px 8px 4px;
        padding: 8px;
        color: #e2e5c4;
        background-color: #24291d;
        border: 1px solid #78805a;
        box-shadow: inset 1px 1px #171b13;
      }

      #input:focus {
        border: 1px solid #b0b78a;
        outline: none;
      }

      #scroll {
        margin: 0 4px;
        background-color: #2d3322;
      }

      #inner-box {
        background-color: #2d3322;
      }

      #entry {
        padding: 7px 8px;
        margin: 1px 0;
        color: #c5c9a4;
        background-color: #363d28;
        border: 1px solid transparent;
      }

      #entry:selected {
        color: #f0f0d0;
        background-color: #626b3d;
        border: 1px solid #a0a879;
      }

      #entry:hover {
        background-color: #4b5432;
        color: #ffffff;
      }

      #text {
        margin: 0 6px;
        color: inherit;
      }

      #text:selected {
        color: #f0f0d0;
      }

      #img {
        margin-right: 8px;
      }

      #unselected {
        color: #a4a889;
      }

      #selected {
        color: #f0f0d0;
      }
    '';
    settings = {
      #style = "";
      #stylesheet = "";
      #color = "";
      #show = "run" || "drun" || "dmenu"
      #mode = "run" || "drun" || "dmenu"
      width = "25%";
      height = "25%";
      prompt = "Morning Mr Freeman, looks like you're running late";
      #xoffset = 720;
      halign = "center";
      location = "top";
      hide_search = true;
      #x = "0";
      #yoffset = "0";
    };
  };
}