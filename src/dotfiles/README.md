# Various Themes

## [‼️🚨⚠️ DISCLAIMER ⚠️🚨‼️](../../README.md)
This script will install every single configuration file,
so if you're looking to download only one theme,
please do so manually by following the script's directories.

# Audacious
![](./src/dotfiles/audacious.gif)

## Credits
This is actually a [winamp skin](https://skins.webamp.org/skin/9b108abe36d37b230909ea49ffc09ed4/lainampborders.zip)
which, according to its [README](./src/audacious/lainampborders/readme.txt),
was made by [MagicalEmi](mailto:MagicalEmi@aol.com)
and edited by [Lain117](https://reddit.com/user/lain117).

# Firefox
![](./src/dotfiles/firefox.gif)

I'm sorry, but you'll have to set this one up manually.

1. Follow [this tutorial](https://www.userchrome.org/how-create-userchrome-css.html) on how to set up your chrome.
Instead of making a new folder, just copy [this one](./src/chrome) into your profile directory.

This is the content of `~/.mozilla/firefox/profiles.ini` file:
```
	[InstallSOMECODE]
	Default=PROFILECODE.default-release
```
While this is the `~/.mozilla/firefox/installs.ini` file:
```
	[SOMECODE]
	Default=PROFILECODE.default-release
```
These might be useful to automate the process into the installation script somehow.

2. These are the contrast control options (which I usually keep turned off,
as most pages don't display properly with contrast control):
```
text:				#CE7688		[foreprimary]
background:			#000000		[backprimary]
unvisited_links:	#C1B48E		[highprimary]
visited_links:		#968C6E		[highquaternary]
```

3. Now you'll just need to install [lain theme](https://addons.mozilla.org/en-US/firefox/addon/lain-theme)
by [Ale Kesadillas](https://addons.mozilla.org/en-US/firefox/user/17990245) to complete your firefox customization!

# Aliases
There are a number of aliased commands in `.profile`,
they aren't needed for the themes' correct functioning,
they're optional and can be freely removed.