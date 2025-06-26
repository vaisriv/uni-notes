{
    pkgs,
    perSystem,
    ...
}:
perSystem.devshell.mkShell {
    name = "notes";
    motd = ''
        {141}📝 uni-notes{reset} development shell
        $(type -p menu &>/dev/null && menu)
    '';

    commands = [
        {
            name = "zk";
            package = pkgs.zk;
            category = "[zk]";
        }
    ];

    packages = with pkgs; [
    ];

    env = [];
}
