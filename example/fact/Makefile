#
# Makefile
#
all: usage

PROG=fact

#-----------------------------------------------------------------
usage: 
	@echo "make [edit|build|run]"

info:
	xdg-open http://www.swig.org/Doc2.0/SWIGDocumentation.html#Go
#-----------------------------------------------------------------
edit e:
	@echo "make (edit) [i|c]"

edit-c ec:
	vi $(PROG).c

edit-i ei:
	vi $(PROG).i

edit-w ew:
	vi $(PROG)_wrap.c
#-----------------------------------------------------------------
build b:
	swig -tcl $(PROG).i
	gcc -c -fpic $(PROG).c $(PROG)_wrap.c -I/usr/local/include
	gcc -shared $(PROG).o $(PROG)_wrap.o -o $(PROG).so
	tclsh

build-go bg:
	swig -go -intgosize 64 $(PROG).i

run r:
	./$(PROG)


#-----------------------------------------------------------------

