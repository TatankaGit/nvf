{ config, lib, pkgs, ... }:

{
  config.vim.keymaps = [
      {
          mode = "n";
          key = "<Esc>";
          action = "<cmd>nohlsearch<CR>";
      }
      {
          mode = "n";
          key = "<leader>q";
          action = "<cmd>vim.diagnostic.setloclist<CR>";
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
            action = "<cmd>vim.lsp.buf.declaration<CR>";
            }
      ];
}
