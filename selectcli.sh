#!/bin/bash
# bash wrapper, that handles forking output between
# GUI and the output meant to go further down the pipe

# a pipe is created to catch the the wanted output
fifo=/tmp/search_gui_pipe-$(whoami)-$(date +%s)
[ ! -p "$fifo" ] && mkfifo $fifo

# 
project_dir=$(dirname `readlink -f $0`)
# python script is called in background, with stdin/out
# redirected to current tty, and location of the pipe file
# passed as an argument (also pass all args for parsing)
$project_dir/search_gui.py "$fifo" $@ >/dev/tty </dev/tty &

# write the program output to stdout and remove the pipe file afterwards
cat "$fifo" && rm "$fifo"
