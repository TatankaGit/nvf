{
  description = "Tatanka's nvf Flake";

 inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {self, nvf, nixpkgs, ...} : 
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      configModule = import ./config;
      pluginsModule = import ./plugins;
    in {
    packages."x86_64-linux".configuredNvim = 
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = pluginsModule ++ configModule;
        })
        .neovim;
    packages."x86_64-linux".default = self.outputs.packages."x86_64-linux".configuredNvim;
  };
}
