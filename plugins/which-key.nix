{ config, ... }:
{
  config.vim.binds.whichKey = {
    enable = true;
    register = {
      "<leader>c" = "Code";
      "<leader>d" = "Document";
      "<leader>r" = "Rename";
      "<leader>s" = "Search";
      "<leader>w" = "Workspace";
      "<leader>t" = "Toggle";
      "<leader>h" = "Git Hunk";
    };
    opts = {
      delay = 0;
      icons = {
        mappings = "vim.g.have_nerd_font";
        keys = "vim.g.have_nerd_font";  
      };
    };
  };
}
