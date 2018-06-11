#!/usr/bin/env bash
#
# shinzui/ocaml ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install ocaml opam

  opam install fpath yaml core utop yojson core_extended core_bench \
    cohttp

  opam install merlin ocp-indent ocp-browser

  
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
