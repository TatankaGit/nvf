{ lib, pkgs, ... }:

{
  vim = {
    extraPlugins = with pkgs.vimPlugins; {
      oxocarbon = {
        package = oxocarbon-nvim;
      };
    };
    theme = {
      enable = true;
      name = "oxocarbon";
      style = "dark";
    };
  };
}
