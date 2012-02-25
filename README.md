Basic utilities and configuration to make Emacs.app daemon mode work smoothly.

Emacs Client.app is an easy way to get access to Emacs from your Dock.

To install:

Put org.gnu.emacs.plist into ~/Library/LaunchAgents

launchctl -w org.gnu.emacs

That will start the daemon.

Move Emacs Client.app into /Applications.

Then, use Emacs Client.app instead of Emacs.app.

Also add (cd (expand-file-name "~/")) to your .emacs; otherwise, the current directory will default to / instead of your homedir, which is not what you want.

Also add this to your personal bin as ~/bin/e:

#! /bin/sh

if -x /Applications/Emacs.app/Contents/MacOS/bin/emacsclient; then
    exec /Applications/Emacs.app/Contents/MacOS/bin/emacsclient $*
fi


