{ config, lib, pkgs, ... }:

{
  config.vim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = false;
    };
    keymaps = [
      {
          mode = "n";
          key = "<Esc>";
          action = "<cmd>nohlsearch<CR>";
      }
      {
          mode = "n";
          key = "<leader>q";
          action = "vim.diagnostic.setloclist";
      }
      {
          mode = "t";
          key = "<Esc><Esc>";
          action = "<C-\\><C-n>";
      }
            {
          mode = "n";
          key = "<C-h>";
          action = "<C-w><C-h>";
      }
      {
          mode = "n";
          key = "<C-l>";
          action = "<C-w><C-l>";
      }
      {
          mode = "n";
          key = "<C-j>";
          action = "<C-w><C-j>";
      }
      {
          mode = "n";
          key = "<C-k>";
          action = "<C-w><C-k>";
      }
            {
                mode = "n";
            key = "gD";
            action = "vim.lsp.buf.declaration";
            }
      ];
  };
}
