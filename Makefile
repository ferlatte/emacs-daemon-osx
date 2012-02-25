# SHELL=/bin/sh
# Enable secondary variable expansion
# http://www.gnu.org/software/make/manual/html_node/Secondary-Expansion.html
# http://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

%.app : %.applescript %.icns
	osacompile -o $(*).app $(*).applescript
	cp $(*).icns $(*).app/Contents/Resources/applet.icns
	touch $(*).app

.PHONY: all clean
all: emacs-client.app
clean:
	rm -r *.app
