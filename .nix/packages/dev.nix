{pkgs, ...}:
pkgs.writeShellApplication {
    name = "dev";
    meta.description = "run dev server";

    runtimeInputs = [];

    text = ''
        echo "running dev!"
    '';
}
