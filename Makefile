#!/usr/bin/make -f

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
INSTALL ?= install

all:

clean:

install:
	$(INSTALL) -m 755 -T ./git-findbig.sh $(DESTDIR)$(BINDIR)/git-findbig

.PHONY: all clean
