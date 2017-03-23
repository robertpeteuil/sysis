PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

help:
	@echo "Please use 'make <command>' where <command> is one of"
	@echo "  install  - to install utilities to ${BINDIR}"
	@echo "uninstall  - to remove utilities from ${BINDIR}"

install:
	@mkdir -p ${BINDIR}
	@cp -f sysis ${BINDIR}
	@echo "sysis utility installed to ${BINDIR}"

uninstall:
	@rm -f sysis ${BINDIR}
	@echo "sysis utility removed from ${BINDIR}"

.PHONY: help install uninstall
