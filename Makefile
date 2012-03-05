# Simple Makefile for gettext sample application

all: hello

hello: main.c
	gcc -o hello main.c 

po/hello.pot: main.c
	xgettext -d hello -o po/hello.pot main.c
