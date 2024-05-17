for file in ./custom/themes/*
    do
        ln -s $(readlink -f ${file}) ~/.oh-my-zsh/custom/themes/$(basename ${file})
    done
