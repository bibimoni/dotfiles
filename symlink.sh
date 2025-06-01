#!/bin/bash

DIR_EXTERNAL_SSD="/Volumes/External disk/"

# echo "ran symlink script"

DIR1="Study materials";
if [[ ! -d ${HOME}/$DIR1 ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR1" "$HOME"
fi

DIR2="Dev";
if [[ ! -d ${HOME}/$DIR2 ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR2" "$HOME"
fi

DIR3="DataGripProjects";
if [[ ! -d ${HOME}/$DIR3 ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR3" "$HOME"
fi

if [[ ! -f ${HOME}/.tmux.conf ]]; then
  ln -s "${HOME}/.config/.tmux.conf" "${HOME}"
fi

if [[ ! -f ${HOME}/.clangd ]]; then
  ln -s "${HOME}/.config/.clangd" "${HOME}"
fi
