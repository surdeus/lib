# To include in any rc to set up the environment by files.
if test -n "$rpath" ; then
	export SETENV="$rpath/dot/setenv"
fi

setenv(){
if [ -d "$ENVDIR" ] ; then
	# The way to make system more flexible.
	# 	Actually I'm really tired of editing one big file.
	# 	It is really easier to change specific one with variables
	# 	or modules.

	# Set variables from files.
	sh="$1"
	
	for i in  "$ENVDIR/$sh/var"/* ; do
		if test -r "$i"  ; then
			export "`basename \"$i\"`"="`cat \"$i\"`"
		fi
	done

	# Modules.
	for i in "$ENVDIR/$sh"/*.sh ; do
		if test -r "$i"  ; then
			. "$i"
		fi
	done
fi
}
