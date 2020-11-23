xconf=/etc/X11/xinit/xinitrc.d
if test -d $xconf ; then
	for f in $xconf/?*.sh ; do
		test -r $f && . "$f"
	done
fi
exec $@

