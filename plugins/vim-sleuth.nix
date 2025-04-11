{ config, pkgs, ... }:
{
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    vim-sleuth = {
      package = vim-sleuth;
      setup = "require('vim-sleuth').setup({'tpope/vim-sleuth'})";
    };
  };
}
