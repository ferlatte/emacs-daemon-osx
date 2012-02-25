Basic utilities and configuration to make Emacs.app daemon mode work smoothly.

Emacs Client.app is an easy way to get access to Emacs from your Dock.

To install:

Copy org.gnu.emacs.plist into ~/Library/LaunchAgents

launchctl load ~/Library/LaunchAgents/org.gnu.emacs.plist

That will start the daemon at log in running as you.

Move Emacs Client.app into /Applications.

Then, use Emacs Client.app instead of Emacs.app.

Add (cd (expand-file-name "~/")) to your .emacs; otherwise, the current directory will default to / instead of your homedir, which is not what you want.

Finally, drop `e' into your personal bin and use it for EDITOR and VISUAL.


