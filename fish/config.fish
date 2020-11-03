#!/usr/bin/fish
# Jien's fishrc.

# No greeting when starting an interactive shell.
function fish_greeting
end
# Left prompt.
function fish_prompt --description "Write out the prompt"
	echo -n $SHPROMPT
end

# Right prompt.
function fish_right_prompt
	# Fuck this.
end

set -l color_cwd
set -l suffix

# Colors

		# Less colors
		export LESS_TERMCAP_md=(perl -e "print \"\033[1;31m\"")
		export LESS_TERMCAP_me=(perl -e "print \"\033[0m\"")
		# Underlined
		export LESS_TERMCAP_us=(perl -e "print \"\033[1;32m\";")
		export LESS_TERMCAP_ue=(perl -e "print \"\033[0m\"; ")
		# Service info
		export LESS_TERMCAP_so=(perl -e "print \"\033[1;33m\";")
		export LESS_TERMCAP_se=(perl -e "print \"\033[0m\";")
		# Blinking color
		export LESS_TERMCAP_mb=(perl -e "print \"\033[1;32m\";")
		export LESS_TERMCAP_me=(perl -e "print \"\033[0m\";")
		# Fish colors
		set fish_color_comment           yellow
		set fish_color_error             grey
		set fish_color_operator          $color_cwd
		set fish_color_autosuggestion    "brgrey"
		set fish_color_command           "--bold"

