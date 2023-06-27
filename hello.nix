builtins.derivation {
  name = "hello.txt";
  builder = ./greet.sh;
  system = builtins.currentSystem;

  greeting = "Hello, World!";
}
