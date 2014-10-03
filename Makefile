# Makefile for ping-check

bindirs = $(HOME)/bin
bins =	ping-check

depends = $(HOME)/lib/sh-util.sh $(HOME)/lib/list-utils.sh

$(HOME)/bin/ping-check:: $(depends)

$(depends):
	maybe-install-bash-lib


subdirs=

include  $(HOME)/lib/Makefile.inc

# vim: sw=4 ai
