#!/usr/bin/env bash
#
# shinzui/ocaml ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  brew install ocaml opam

  opam install fpath yaml core utop yojson core_extended core_bench \
    cohttp angstrom

  opam install merlin ocp-indent ocp-browser odig odoc user-setup

  cp opam-bin-cache.sh ~/.opam/opam-init/hooks/

  
}

pkg.link() {
  #do nothing
  echo ""
}

# pkg.push() {
#     git.push
# }

pkg.pull() {
  opam update
  opam upgrade
  opam install user-setup
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
