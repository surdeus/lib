{ pkgs, ... }:

with import <nixpkgs> {} ;
with builtins ;
with lib ;

{
	home.packages = [
		pkgs.rc
		pkgs.dash
		pkgs.ed
		pkgs.neovim

		pkgs.i3
		pkgs.awesome

		pkgs.unzip
		pkgs.wget
		pkgs.gnupg

		pkgs.chromium
		pkgs.firefox

		pkgs.gcc
		pkgs.binutils

		pkgs.inkscape
		pkgs.gimp

		pkgs.nmap
		pkgs.radare2
		pkgs.whois
	] ;
}
