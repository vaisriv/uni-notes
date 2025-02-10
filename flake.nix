{
	inputs = {
		# Emanote
		emanote.url = "github:srid/emanote";
		emanote.inputs.emanote-template.follows = "";
		nixpkgs.follows = "emanote/nixpkgs";
		flake-parts.follows = "emanote/flake-parts";
		# emanote = {
		# 	url = "github:srid/emanote";
		# 	inputs.nixpkgs.follows = "nixpkgs";
		# 	inputs.flake-parts.follows = "flake-parts";
		#
		# 	inputs.emanote-template.follows = "";
		# };

		# Lix
		lix-module = {
			url = "https://git.lix.systems/lix-project/nixos-module/archive/2.92.0.tar.gz";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		# Alejandra
		alejandra = {
			url = "github:kamadorueda/alejandra";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs @ {
		self,
		flake-parts,
		nixpkgs,
		lix-module,
		alejandra,
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
				devShells.default =
					pkgs.mkShell {
						buildInputs = [
							# pkgs.nixpkgs-fmt
						];
					};
				formatter = inputs.${system}.alejandra.defaultPackage.${system};
			};
		};
}
