{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs; [
      pkg-config
      openssl
      libevdev
      postgresql
      nodejs
      nodePackages_latest.npm
      bun
      esbuild
    ];
    buildInputs = with pkgs; [
      systemd
      stdenv.cc.libc
    ];
    # why do we need to set the library path manually?
    shellHook = ''
      export LIBCLANG_PATH="${pkgs.llvmPackages.libclang.lib}/lib";
      export XDG_RUNTIME_DIR="/run/user/$(id -u)";
    '';
}
