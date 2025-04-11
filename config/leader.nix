
{ config, lib, pkgs, ... }:

{
  config.vim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = false;
    };
  };
}
