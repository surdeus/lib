# k1574's rc configuration file.

oldifs = $ifs
prompt = '% ' # The simplest possible prompt.
fn % {
	switch($#*){
		case 0
		case *
			$*
	}
}
txt = $home/shr # Directory for notes, lists etc.
tmpl = $home/tmpl # Templates.
doc = $home/doc # Documents.
lib = $home/lib # Configuration for other applications.
txt = $home/txt # Plain text files. Lists, notes etc.
load = $home/load # Downloads.
mnt = $home/mnt # Mount.
pub = $home/pub # Public share.
vid = $home/vid # Video files.
snd = $home/snd # Audio files.
img = $home/img # Image files.
app = $home/app # Program installation directory.
env = $home/env # Environment setting directory.
dev = $home/dev # Development.
#etc = $local/etc # Configuration files for any system.
exe = $home/exe # Executable binaries installation directory.
tmp = $home/tmp # Temporary.
shr = $home/shr # Share files for programs.
man = $shr/man # Directory for manual pages. Are supposed to be written in plain text.
git = https://github.com/$USER
pager = nobs # Pager deleting all ESC-sequences. For 9term mostly.
manpager = $pager # Pager for man pages.
profile = $0 # Profile file.

inferno = $app/inferno # Inferno.
infernoexe = `{ # Inferno executables files.
	sys = `{uname}
	machine = `{uname -m}
	if(test $machine '=' x86_64){
		machine = 386
	}
	echo $inferno/$sys/$machine/bin
}

plan9 = $app/plan9 # Plan9.
plan9exe= $plan9/bin # Plan9 bnaries.
gopath = $app/go # Golang path.
goexe = $gopath/bin # Golang binaries.
vpath = $app/v # VLang binaries and scripts.
vexe = $vpath
setenv = $lib/setenv/rc # Setting environment script.
composerexe = $lib/composer/vendor/bin
font = $plan9/font/fixed/unicode.9x15.font # The standard font for Plan9 program.
editor = ed
shell = rc

path = ( $exe $path $goexe $plan9exe $infernoexe $vexe $composerexe )
# Pretend path from growing because of running many "rc"s.
if(which goblin >/dev/null >[2=1]){
	path = `{
		{ for( i in $path) echo $i } | goblin uniq -U
	}
}

# Xorg.
xinitrc = $lib/xinitrc
xresources = $lib/xresources
xmodmap = $lib/xmodmap

switch( `{uname} ){
case ( Linux NetBSD DragonFly OpenBSD FreeBSD ) # On Unix-like systems.
	if(which aes >/dev/null >[2=1]){
		LESS_TERMCAP_md = `{aes fg-red bold }
		LESS_TERMCAP_me = `{aes end}
		LESS_TERMCAP_us = `{aes fg-green bold}
		LESS_TERMCAP_ue = `{aes end}
		LESS_TERMCAP_so = `{aes fg-yellow}
		LESS_TERMCAP_se = `{aes end}
		LESS_TERMCAP_mb = `{aes fg-cyan}
		LESS_TERMCAP_me = `{aes end} 
	}
	if not {
		LESS_TERMCAP_md = `{ perl -e 'print "\033[1;31m" ;' }
		LESS_TERMCAP_me = `{ perl -e 'print "\033[0m"    ;' }
		# Underlined.
		LESS_TERMCAP_us = `{ perl -e 'print "\033[1;32m" ;' }
		LESS_TERMCAP_ue = `{ perl -e 'print "\033[0m"    ;' }
		# Service info.
		LESS_TERMCAP_so = `{ perl -e 'print "\033[1;33m ";' }
		LESS_TERMCAP_se = `{ perl -e 'print "\033[0m"    ;' }
		# Blinking color.
		LESS_TERMCAP_mb = `{ perl -e 'print "\033[1;32m" ;' }
		LESS_TERMCAP_me = `{ perl -e 'print "\033[0m"    ;' }
	}
	# Pager.
	PAGER = $pager
	MANPAGER = $manpager
	# Editor.
	EDITOR = $editor
	user = $USER
case *
	# Nothing in non-Unix systems.
}

fn .. {
	# Move in to parent directory $1 times.
	if(test -z $1)
		builtin cd ..
	if not
		for(i in `{seq $1})
			builtin cd ..
	cds = (`{pwd} $cds)
}

fn l {
	goblin ls $* | goblin quote | fmt
}

fn ll {
	goblin ls $* | finfo
}


cdfile = $tmp/cdfile
if(! test -d `{dirname $cdfile}) mkdir `{dirname $cdfile}
if(! test -r $cdfile) touch $cdfile

fn ucds {
	# Update history.
ifs = '
'
	cds = `{tac $cdfile | goblin uniq -U}
ifs = $oldifs
	echo > $cdfile
	{for(i in $cds) echo $i} | tac >> $cdfile
}
ucds

fn cd {
	# History implementation.
 	if(builtin cd $1 && test -n $1){
		pwd = `{pwd}
		echo $pwd >> $cdfile
		cds = ($pwd $cds)
	}
}

fn - {
	# Move back in history for $1 notes.
	if(~ $#* 0)
		1 = 1
	builtin cd $cds($1)
}

fn cds {
	# Print history.
	{for(i in $cds) echo $i } | nl
}

fn hcds {
	cds | head
}

fn p {
	plumb $*
}

fn e {
	$editor $*
}

fn q {
	exit
}

fn uprofile {
	. $profile
}

fn noerr {
	{$*} >[2]/dev/null
}

fn nostd {
	{$*} >[1]/dev/null
}

fn m {
	for(i in $*){
		if(test -r $man/$i){
			man $man/$i | less
		}
		if not {
			man $i | less
		}
	}
}

# Setting enviroment.
if(test -r $setenv){
	. $setenv
	setenv rc
}

