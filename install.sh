#!/usr/bin/env bash
declare -a files=('.bash_aliases' '.bash_mancolor' '.bash_profile' '.bash_prompt' '.bashrc' '.dircolors' '.gitconfig' '.gitignore' '.tmux.conf');

echo "_| Start to install, make symbolic link config files |_"

for file in "${files[@]}"
do
    ln -sfb "${PWD}"'/'"${file}" $HOME/"${file}"
done

printf "\n_| Source .bashrc |_\n\n"
source $HOME/.bashrc

echo "_| Would you like to delete some backupped files in your home ? |_"
echo "_| (This script make some backupped files if it find file already exist) |_"
read -p "_| Yes or No (y|n) |_ ??? : " answer
if [[ "${answer}" == 'y' || "${answer}" == 'yes' ]]; then
    echo 'do it'
    rm -i $HOME/.*~
else
    echo "Bye!"
fi
