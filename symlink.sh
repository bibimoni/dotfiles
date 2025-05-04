#!/bin/bash

DIR_EXTERNAL_SSD="/Volumes/External disk/"
DIR1="Study materials";

echo "ran symlink script"

if [[ ! -d "${HOME}$DIR1" ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR1" "$HOME"
fi

DIR2="Dev";
if [[ ! -d "${HOME}$DIR2" ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR2" "$HOME"
fi

DIR3="DataGripProjects";
if [[ ! -d "${HOME}$DIR3" ]]; then 
  ln -s "${DIR_EXTERNAL_SSD}$DIR3" "$HOME"
fi
