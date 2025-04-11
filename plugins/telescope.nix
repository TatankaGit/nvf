{
  vim.telescope = {
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
