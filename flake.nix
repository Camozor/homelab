{
  description = "Homelab";
  inputs.nixpkgs.url = "nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      defaultPackage.${system} =
        pkgs.mkShell { buildInputs = with pkgs; [ kubeseal ]; };
    };

}
