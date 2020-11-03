#!/bin/sh
rpath="$(dirname `readlink -f $0`)"
dot="$rpath/file"
for i in $dot/*  ; do
	ln="$HOME/.`basename $i`"
	rm -f "$ln"
	echo $ln $i
	ln -s "$i" "$ln"
done

