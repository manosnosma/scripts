#!/usr/bin/env bash

languages=`echo "php rust elixir nodejs typescript javascript" | tr ' ' '\n'`
utils=`echo "find mv tmux sed awk zoxide nvim" | tr ' ' '\n'`

selected=`printf "$languages\n$utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
  tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl cht.sh/$selected~`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
fi
