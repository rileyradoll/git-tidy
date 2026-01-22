PREFIX ?= /usr/local/bin

.PHONY: install uninstall

install:
	cp git-tidy $(PREFIX)/git-tidy
	chmod +x $(PREFIX)/git-tidy

uninstall:
	rm -f $(PREFIX)/git-tidy
