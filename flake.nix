{
  description = "A very basic flake";

  inputs = {
    nixpkgs = {
      url = github:nixos/nixpkgs?ref=nixos-23.05;
    };
  };

  outputs = { 
    self, 
    nixpkgs 
  }: let
    system = "aarch64-darwin";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system} = {
      myPackage = pkgs.inkscape;
      default = self.packages.${system}.myPackage;
    };

  };
}
