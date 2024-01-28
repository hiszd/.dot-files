{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs; [
      pkg-config
      openssl
      postgresql
      libev
      libevdev
      cmake
    ];
    buildInputs = with pkgs; [
      systemd
      stdenv.cc.libc
    ];
    # why do we need to set the library path manually?
    # shellHook = ''
    #   export LIBCLANG_PATH="${pkgs.llvmPackages.libclang.lib}/lib";
    # '';
}
