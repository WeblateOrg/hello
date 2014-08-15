#!/usr/bin/make -f
# Simple Makefile for gettext sample application

# Languages which we translate
LANGUAGES=it pl ja fr cs gl sv nl ka tr fi ca hu nb es de lt ro mn pt_BR zh_CN zh_TW hy en_GB sk sl el da ru fa sr he

all: hello

hello: main.c
	gcc -o $@ $<

po/hello.pot: main.c Makefile
	xgettext -d hello -o $@ $<
	sed -i 's/Report-Msgid-Bugs-To: .*\\n/Report-Msgid-Bugs-To: <noreply@example.net>\\n/' $@
	sed -i 's/Project-Id-Version: .*\\n/Project-Id-Version: Weblate Hello World 2012\\n/' $@

po/%.po: po/hello.pot
	if [ ! -f $@ ] ; then \
		msginit -l $* -o $@ --no-translator -i $< ; \
	else \
		msgmerge -U $@ $< ; \
	fi
	sed -i 's/Project-Id-Version: .*\\n/Project-Id-Version: Weblate Hello World 2012\\n/' $@

.PHONY: pofiles
pofiles: $(addsuffix .po, $(addprefix po/, ${LANGUAGES}))
