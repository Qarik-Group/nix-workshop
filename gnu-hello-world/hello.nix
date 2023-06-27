let pkgs = import <nixpkgs> {};
in pkgs.stdenv.mkDerivation {
  name = "hello";
  src = pkgs.fetchurl {
    url = "mirror://gnu/hello/hello-2.12.1.tar.gz";
    hash = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
  };

  configurePhase = "./configure --prefix=$out";
  buildPhase = "make";
  installPhase = "make install";
}
