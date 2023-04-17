{
  inputs.nixify.url = github:haraldh/nixify;

  outputs = {nixify, ...}:
    nixify.lib.rust.mkFlake {
      src = ./.;
      targets.x86_64-unknown-none = false;
    };
}
