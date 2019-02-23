#
# Makefile
#
all: usage

PROG=fact

usage: 
	@echo "make [edit|build|run]"

#-----------------------------------------------------------------
edit e:
	@echo "make (edit) [i|c]"

edit-c ec:
	vi $(PROG).c

edit-i ei:
	vi $(PROG).i
#-----------------------------------------------------------------
build b:
	swig -go $(PROG).i
	#swig -tcl $(PROG).i

run r:


