{
  inputs = {
    nixpkgs.follows = "emanote/nixpkgs";
    flake-parts.follows = "emanote/flake-parts";

    # Emanote
    emanote = {
      url = "github:srid/emanote";
      inputs.emanote-template.follows = "";
    };
  };

  outputs = inputs @ {
    self,
    flake-parts,
    nixpkgs,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [inputs.emanote.flakeModule];
      perSystem = {
        self',
        pkgs,
        system,
        ...
      }: {
        emanote = {
          sites."default" = {
            layers = [
              {
                path = ./.;
                pathString = ".";
              }
            ];
            prettyUrls = true;
          };
        };
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            zk
          ];
        };
        formatter = pkgs.alejandra;
      };
    };
}
