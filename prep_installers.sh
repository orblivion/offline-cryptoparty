#!/bin/sh

error_exit () {
  echo $1; exit 1
}

gpg --list-keys 3A06537A > /dev/null || error_exit "Need mozilla key: http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/25.0/KEY"
gpg --list-keys 9369CDF3 > /dev/null || error_exit "Need enigmail key: https://www.enigmail.net/documentation/signature.php"
gpg --list-keys EC70B1B8 > /dev/null || error_exit "Need gpg4win key: https://ssl.intevation.de/Intevation-Distribution-Key.asc"
gpg --list-keys 00D026C4 > /dev/null || error_exit "Need gpgtools (OSX) key: http://support.gpgtools.org/discussions/everything/13958-need-the-gpgtools-public-key-to-verify-the-sig-file#comment_30424358"

cd installers

# Windows sha1/md5 utility:
ls Windows-KB841290-x86-ENU.exe || wget "http://download.microsoft.com/download/c/f/4/cf454ae0-a4bb-4123-8333-a1b6737712f7/Windows-KB841290-x86-ENU.exe"
sha1sum Windows-KB841290-x86-ENU.exe | grep 99fb35d97a5ee0df703f0cdd02f2d787d6741f65 || error_exit "Windows sha1/md5 utility ironically failed checksum"

# GPG4WIN
ls gpg4win-2.2.1.exe || wget "http://files.gpg4win.org/gpg4win-2.2.1.exe"
ls gpg4win-2.2.1.exe.sig || wget "http://files.gpg4win.org/gpg4win-2.2.1.exe.sig"
gpg --verify gpg4win-2.2.1.exe.sig || error_exit "Bad sig for GPG4Win"

# GPGTools (OS X)
getgpgtools () {
# No certificate; it's ok, we have a GPG key
wget --no-check-certificate "https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg"
}
getgpgtoolssig () {
# No certificate; it's ok, we have a GPG key
wget --no-check-certificate "https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg.sig"
}
# GPG Tools doesn't like wget, but it seems to cooperate some of the time
ls "GPG Suite - 2013.10.22.dmg" || getgpgtools || getgpgtools || getgpgtools || getgpgtools || getgpgtools || error_exit "Can't seem to get GPG Tools"
ls "GPG Suite - 2013.10.22.dmg.sig" || getgpgtoolssig || getgpgtoolssig || getgpgtoolssig || getgpgtoolssig || getgpgtoolssig || error_exit "Can't seem to get GPG Tools"
gpg --verify "GPG Suite - 2013.10.22.dmg.sig" || error_exit "Bad sig for GPG Tools (OS X)"

## Enigmail
# installer
ls "enigmail-1.6-sm+tb.xpi" || wget "https://addons.mozilla.org/en-US/thunderbird/downloads/file/229990/enigmail-1.6-sm+tb.xpi?type=application/octet-stream" -O "enigmail-1.6-sm+tb.xpi"
# sig
ls "enigmail-1.6-sm+tb.xpi.asc" || wget "http://www.enigmail.net/download/release/1.6/enigmail-1.6-sm+tb.xpi.asc" -O "enigmail-1.6-sm+tb.xpi.asc"
gpg --verify enigmail-1.6-sm+tb.xpi.asc || error_exit "Bad sig for enigmail"

## Thunderbird
# installers
ls "Thunderbird Setup 24.2.0.exe" || wget "https://download.mozilla.org/?product=thunderbird-24.2.0&os=win&lang=en-US" -O "Thunderbird Setup 24.2.0.exe"
ls "Thunderbird 24.2.0.dmg" || wget "https://download.mozilla.org/?product=thunderbird-24.2.0&os=osx&lang=en-US" -O "Thunderbird 24.2.0.dmg"
# Sha1sum
ls "thunderbird_SHA1SUMS" || wget "http://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/latest/SHA1SUMS" -O "thunderbird_SHA1SUMS"
# Sha1sum sig
ls "thunderbird_SHA1SUMS.asc" || wget "http://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/latest/SHA1SUMS.asc" -O "thunderbird_SHA1SUMS.asc"

# Verify Sha1sum sig
gpg --verify thunderbird_SHA1SUMS.asc || error_exit "Bad sig for thunderbird SHA1SUMS"

# Verify Sha1sums are in file
ls "Thunderbird Setup 24.2.0.exe" && grep $(sha1sum "Thunderbird Setup 24.2.0.exe" | cut -b 1-40) thunderbird_SHA1SUMS || error_exit "Bad sha1 for Thunderbird Win"
ls "Thunderbird 24.2.0.dmg" && grep $(sha1sum "Thunderbird 24.2.0.dmg" | cut -b 1-40) thunderbird_SHA1SUMS || error_exit "Bad sha1 for Thunderbird Mac"
