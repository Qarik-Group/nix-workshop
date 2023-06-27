let pkgs = import <nixpkgs> {};
in builtins.derivation {
  name = "hello.txt";
  builder = ./greet.sh;
  system = builtins.currentSystem;

  greeting = "Hello, World!";
  PATH = "${pkgs.coreutils}/bin";
}
