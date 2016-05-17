#!/bin/bash

CWD=`pwd`;

for file in `ls -lad .* | grep -v -E '(\.swp|~)$'`;
do
    if [[ "x." == "x$file" || "x.." == "x$file" || "x.git" == "x$file" ]];
    then
        continue;
    elif [ -d $file ];
    then
        create_link=1;
        echo "$HOME/$file";
        if [ -e "$HOME/$file" ];
        then
            read -p "directory $file already exists in your home dir. overwrite it? [y/n]" overwrite;
            create_link=`echo $overwrite | grep -i "^y"` ;
        fi;
        if [ $create_link ];
        then
            echo "overwriting $file";
            if [ -d "$HOME/$file" ];
            then
                rm -rf "$HOME/$file";
            fi;
            ln -F -i -s "$CWD/$file" "$HOME";
        else
            echo "not touching $file";
        fi;
    elif [ -f $file ];
    then
        create_link=1;
        echo "$HOME/$file";
        if [ -e "$HOME/$file" ];
        then
            read -p "regular file $file already exists in your home dir. overwrite it? [y/n]" overwrite;
            create_link=`echo $overwrite | grep -i "^y"` ;
        fi;
        if [ $create_link ];
        then
            echo "overwriting $file";
            ln -i $file "$HOME/$file";
        else
            echo "not touching $file";
        fi;
    fi;
done;

create_link=1;
file="pathogen.vim";
if [ -e "$HOME/.vim/autoload/$file" ];
then
    read -p "regular file $file already exists in your home dir. overwrite it? [y/n]" overwrite;
    create_link=`echo $overwrite | grep -i "^y"` ;
fi;
if [ $create_link ];
then
    echo "overwriting $file";
    ln -i "vim-pathogen/autoload/$file" "$HOME/.vim/autoload/$file";
else
    echo "not touching $file";
fi;

#mkdir -p ~/.vim/autoload ~/.vim/bundle && \
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
