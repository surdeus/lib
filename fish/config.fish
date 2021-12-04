#!/usr/bin/fish
# Jien's fishrc.

# No greeting when starting an interactive shell.
function fish_greeting
end
# Left prompt.
function fish_prompt --description "Write out the prompt"
	echo -n $SHPROMPT
end

# Easy quit.
function q
	echo $SHLVL - 1 | bc
	exit
end

# Right prompt.
function fish_right_prompt
	# Fuck this.
end

set -l color_cwd
set -l suffix

# Colors
set fish_color_comment           yellow
set fish_color_error             grey
set fish_color_operator          $color_cwd
set fish_color_autosuggestion    "brgrey"
set fish_color_command           "--bold"

