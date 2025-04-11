{ lib, ... }:
{
  vim.mini = {
    ai.enable = true;
    align.enable = true;
    bracketed.enable = false; # creates some interesting movement options
    hipatterns.enable = true;
    #    hipatterns.setupOpts = {
    #      highlighters = lib.generators.mkLuaInline ''{ hex_color = hipatterns.gen_highlighter.hex_xolor(),}'';
    #    };
    indentscope.enable = false; #animated tab line showing scope of cursor position
    jump.enable = true;
    move.enable = false; # moves chars/lines/blocks of text
    pairs.enable = true;
    snippets.enable = false; # configurable snippets with configured prompts for text
    starter.enable = false; # new start menu for nvim command (can also load sessions if mini.sessions is enabled
    surround.enable = true;
    trailspace.enable = false; # tool for trimming trailing whitespace and empty lines
  };
}
