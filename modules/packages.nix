{ pkgs, inputs, ...}:

{
  home.packages = [
  	inputs.fetch.packages.${pkgs.system}.default
  ];
}
