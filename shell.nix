{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    python39
    python39Packages.wheel
    python39Packages.ipython
    python39Packages.notebook
    python39Packages.pandas
    python39Packages.brotli
    python39Packages.brotlipy
    # python39Packages.fastparquet

    pipenv
    which
    gcc
    binutils

    # All the C libraries that a manylinux_1 wheel might depend on:
    ncurses
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libICE
    xorg.libSM
    glib

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
