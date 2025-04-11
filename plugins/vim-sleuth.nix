{ pkgs, ... }:
{
  vim.extraPlugins = with pkgs.vimPlugins; {
    vim-sleuth = {
      package = vim-sleuth;
    };
  };
}
