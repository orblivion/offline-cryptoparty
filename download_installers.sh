#!/bin/sh

cd installers

# Windows sha1/md5 utility:
wget "http://download.microsoft.com/download/c/f/4/cf454ae0-a4bb-4123-8333-a1b6737712f7/Windows-KB841290-x86-ENU.exe"

# GPG
wget "http://files.gpg4win.org/gpg4win-2.2.1.exe"
wget "https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg"

# Enigmail
wget "https://addons.mozilla.org/en-US/thunderbird/downloads/file/229990/enigmail-1.6-sm+tb.xpi?type=application/octet-stream" -O "enigmail-1.6-sm+tb.xpi"

# Thunderbird
wget "https://download.mozilla.org/?product=thunderbird-24.2.0&os=win&lang=en-US" -O "Thunderbird Setup 24.2.0.exe"
wget "https://download.mozilla.org/?product=thunderbird-24.2.0&os=osx&lang=en-US" -O "Thunderbird 24.2.0.dmg"


# sha1sum verify
# TODO
# sha1sum -c file dir

# TODO - verify with gpg. requires having keys. put that in a script too, with a prompt warning that it's about to do this.
