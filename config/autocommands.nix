{ config, lib, pkgs, ... }:
{
  config.vim = {
    augroups = [
      {
        name = "kickstart-highlight-yank";
        enable = true;
        clear = true;
      }
    ];
    autocmds = [
      {
        enable = true;
        desc = "Highlight on yank";
        event = [ "TextYankPost" ];
        pattern = [ "*" ];
        group = "kickstart-highlight-yank";
        callback = lib.mkLuaInline ''
          function()
            vim.highlight.on_yank()
          end
        '';
      }
    ];
  };
}
