{
  vim.languages = {
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
}
