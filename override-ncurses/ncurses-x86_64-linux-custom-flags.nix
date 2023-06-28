let gcc_flags_overlay = final: prev: {
  stdenv = prev.withCFlags [ "-Werror" ] prev.stdenv;
};
in (import <nixpkgs> { overlays = [gcc_flags_overlay]; }).callPackage ./common.nix {}
