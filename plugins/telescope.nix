{ config }:
{
  vim.telescope = {
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
}
