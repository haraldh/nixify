{
  description = "Opinionated and simple nix flake bootstrapping library for real-world projects";

  inputs.crane.inputs.flake-utils.follows = "flake-utils";
  inputs.crane.inputs.nixpkgs.follows = "nixpkgs";
  # TODO: Switch to upstream once https://github.com/ipetkov/crane/pull/126 is merged
  inputs.crane.url = github:rvolosatovs/crane/fix/no_std;
  inputs.flake-utils.url = github:numtide/flake-utils;
  inputs.nixlib.url = github:nix-community/nixpkgs.lib;
  inputs.nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
  inputs.rust-overlay.inputs.flake-utils.follows = "flake-utils";
  inputs.rust-overlay.inputs.nixpkgs.follows = "nixpkgs";
  inputs.rust-overlay.url = github:oxalica/rust-overlay;

  outputs = inputs: {
    checks = import ./checks inputs;
    lib = import ./lib inputs;
  };
}
