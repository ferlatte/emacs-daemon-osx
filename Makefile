# SHELL=/bin/sh
# Enable secondary variable expansion
# http://www.gnu.org/software/make/manual/html_node/Secondary-Expansion.html
# http://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

%.app : %.applescript %.icns
	osacompile -o $(*).app $(*).applescript
	cp $(*).icns $(*).app/Contents/Resources/applet.icns
	touch $(*).app

.PHONY: all clean release
all: emacs-client.app
clean:
	rm -r *.app
# This is necessary because make doesn't support spaces in file names.
release: all
	rm -fr "Emacs Client.app"
	cp -aR emacs-client.app "Emacs Client.app"
