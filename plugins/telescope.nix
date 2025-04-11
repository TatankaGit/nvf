{ config, pkgs, ... }:
{
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    # Include the fzf-native extension for Telescope
    telescope-fzf-native = {
      package = telescope-fzf-native-nvim;
    };
  };
  config.vim.telescope = {
    enable = true;
    setupOpts = {
      defaults = {
        layout_strategy = "horizontal";
        sorting_strategy = "ascending";
        layout_config = {
          horizontal.prompt_position = "top";
          width = 0.8;
          height = 0.8;
          preview_cutoff = 120;
        };
        file_ignore_patterns = [
          "node_modules"
          "%.git/"
          "build/"
          "dist/"
          "target/"
          "result/"
        ];
        path_display = [ "smart" ];
      };
      extensions = {
        fzf = {
          fuzzy = true;
          override_generic_sorter = true;
          override_file_sorter = true;
          case_mode = "smart_case";
        };
      };
    };
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
}
