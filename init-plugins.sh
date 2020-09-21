#!/usr/bin/env bash

if [ -z "$HOME" ]; then echo "Seems you're \$HOMEless :("; exit 1; fi

VIMPLUGS=(
  # File exploration and navigation
  "junegunn/fzf.vim"

  # Languages and syntax
  "sheerun/vim-polyglot"

  "preservim/nerdtree"
  "vim-airline/vim-airline"
  "christoomey/vim-tmux-navigator"
  "ervandew/supertab"
  "vim-syntastic/syntastic"
  "tpope/vim-abolish"
  "tpope/vim-endwise"
  "tpope/vim-eunuch"
  "tpope/vim-repeat"
  "tpope/vim-surround"
  "tpope/vim-fugitive"
  "airblade/vim-gitgutter"
  "rodjek/vim-puppet"
  "hashivim/vim-terraform"

  #"base16-vim"
  #"emmet-vim"
  #"file-line"
  #"mediawiki.vim"
  #"my-snippets"
  #"plantuml-syntax"
  #"tlib_vim"
  #"vim-addon-mw-utils"
  #"vim-coffee-script"
  #"vim-colorschemes"
  #"vim-ctrlspace"
  #"vim-projectionist"
  #"vim-rake"
  #"vim-ruby"
  #"vim-slime"
  #"vim-slumlord"
  #"vim-snipmate"
  #"vim-snippets"
)

vim_plug_install() {
  VIMPLUG="$1"
  STARTDIR="pack/plugins/start"

  echo "Installing vim plugin: ${VIMPLUG}"
  PLUGNAME=$(echo "$VIMPLUG" | cut -d '/' -f2)
  PLUGDIR="${STARTDIR}/${PLUGNAME}"

  pushd "${HOME}\.vim"

  [ ! -d ${STARTDIR} ] && mkdir -p "${STARTDIR}"

  git submodule add --depth=1 "https://github.com/$VIMPLUG.git" "$PLUGDIR"
  git add .
  git commit -m "Install $VIMPLUG plugin as a submodule"
  popd
  echo
}

for INDEX in ${!VIMPLUGS[*]}; do
  vim_plug_install "${VIMPLUGS[$INDEX]}"
done

echo
echo "Plugin Packs installed! :)"
