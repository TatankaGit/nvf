
{ config, lib, pkgs, ... }:
{
  config.vim = {
    undoFile.enable = true;
    searchCase = "sensitive";
    scrollOffset = 12;
    options = {
      mouse = "a";
      updatetime = 200;
      tm = 300;
    };
  };
  #      vim.opt.list = true
  #    vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
  #    vim.opt.inccommand = 'split'
}
