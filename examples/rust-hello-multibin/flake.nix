{
  inputs.nixify.url = github:haraldh/nixify;

  outputs = {nixify, ...}:
    nixify.lib.rust.mkFlake {
      src = ./.;
    };
}
