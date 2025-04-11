{
  description = "Tatanka's nvf Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    {
      self,
      nvf,
      nixpkgs,
      ...
    }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      packages."x86_64-linux".configuredNvim =
        (nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [
            {
              vim = {
                undoFile.enable = true;
                searchCase = "sensitive";
                scrollOffset = 12;
                options = {
                  shiftwidth = 2;
                  tabstop = 2;
                  mouse = "a";
                  updatetime = 200;
                  tm = 300;
                };
                theme = {
                  enable = true;
                  name = "oxocarbon";
                  style = "dark";
                };
                lazy = {
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
                  };
                };
                telescope = {
                  enable = true;
                  mappings = {
                    helpTags = "<leader>sh";
                    findFiles = "<leader>sf";
                    liveGrep = "<leader>sg";
                    diagnostics = "<leader>sd";
                    resume = "<leader>sr";
                    buffers = "<leader><leader>";
                    lspDefinitions = "gd";
                    lspDocumentSymbols = "<leader>ds";
                    lspImplementations = "gI";
                    lspReferences = "gr";
                    lspTypeDefinitions = "<leader>D";
                    lspWorkspaceSymbols = "<leader>ws";
                  };
                };
                mini = {
                  ai.enable = true;
                  align.enable = true;
                  bracketed.enable = false; # creates some interesting movement options
                  hipatterns.enable = true;
                  #    hipatterns.setupOpts = {
                  #      highlighters = lib.generators.mkLuaInline ''{ hex_color = hipatterns.gen_highlighter.hex_xolor(),}'';
                  #    };
                  indentscope.enable = false; # animated tab line showing scope of cursor position
                  jump.enable = true;
                  move.enable = false; # moves chars/lines/blocks of text
                  pairs.enable = true;
                  snippets.enable = false; # configurable snippets with configured prompts for text
                  starter.enable = false; # new start menu for nvim command (can also load sessions if mini.sessions is enabled
                  surround.enable = true;
                  trailspace.enable = false; # tool for trimming trailing whitespace and empty lines
                };
                languages = {
                  enableFormat = true;
                  enableLSP = true;
                  enableTreesitter = true;
                  nix = {
                    enable = true;
                    format.type = "nixfmt";
                  };
                  zig = {
                    enable = true;
                    dap.enable = true;
                  };
                  lua.enable = true;
                  nim.enable = true;
                };
                binds.whichKey.enable = true;
              };
            }
          ];
        }).neovim;
      packages."x86_64-linux".default = self.outputs.packages."x86_64-linux".configuredNvim;
    };
}
