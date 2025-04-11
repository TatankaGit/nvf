{
  description = "Tatanka's nvf Flake";

 inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, ...} @ inputs: 
    let
      configModule = import ./config;
      pluginsModule = import ./plugins;
    in {
    packages.x86_64-linux = {
      default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = configModule ++ pluginsModule;
        })
        .neovim;
    };
  };  
}
