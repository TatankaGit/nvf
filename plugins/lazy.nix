{ config, pkgs, ... }:
{
  config.vim.lazy = {
    enable = true;
    plugins = {
       todo-comments-nvim = {
        package = "todo-comments-nvim"; 
        setupModule = "todo-comments"; 
        setupOpts = {
          signs = false;
        };
        event = "VimEnter";
      };
      plenary-nvim = {
        package = "plenary-nvim";
        setupModule = "plenary";
      };
    };
  };
}
