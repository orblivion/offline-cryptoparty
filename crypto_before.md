## What am I doing here, and why am I doing this?

In order to allow for a crypto party with a bad or nonexistent Internet connection, it would save a lot of time for the host to have the installers on hand. However, this poses a threat: Like your mom always told you, don't take crypto software from strangers! The instructions here will give you information that will allow you to verify the software that the host gives you. It is likely that not everybody will have time to follow these instructions, but putting this out there means that those who do not do this are trusting not just the host, but also the most trustworthy of an *open* pool of guests (a closed group could be in cahoots). So it would be appreciated if you help us by being an additional guardian. Getting this information during the party is fine as well if you trust the Internet connection there. However, doing it ahead of time removes more possibility of smoke and mirrors.

### Why not just download the actual software now?

You should feel free to do so. However, again, not everybody may get around to following these instructions before the event. If there are enough guardians who grab the information here, the stragglers can still arguably feel safe installing software given to them.

### Should I be trusting something over the open Internet anyway?

Granted, even your current Internet connection could theoretically be compromised, but there's not much to be done about that. This system aims to not be any *less* secure than your normal Internet connection.

## Instructions

Obviously it would make no sense as far a trust goes to give you the data myself, so I will guide you to how to find it from official pages. Again, each piece of information is just 40 alphanumeric characters.

First GnuPG. If you go to: http://www.gnupg.org/ you will see that it endorses gpg4win.org for Windows and gpgtools.org for Mac OS X.

### 1) GPG4Win checksums

* Visit The [gpg4win package integrity](http://www.gpg4win.org/package-integrity.html) page.
* Copy the sha1 checksums for the main installer. (TODO: give name)

### 2) GPG4Win Signing Key Fingerprint

* Visit The [gpg4win package integrity](http://www.gpg4win.org/package-integrity.html) page.
* From here, click the link to the [Intervation File Distribution Key](https://ssl.intevation.de/). It's under **OpenPGP Signatures**.
* From here, click on [Intevation-Distribution-Key](https://ssl.intevation.de/Intevation-Distribution-Key.asc). It's under **Other Keys/Certificates** on the right (in English).
* Here you will see "Key fingerprint = ". Copy what comes after that.

### 3) GPGTools checksum

* Visit the [GPGTools](https://gpgtools.org/) homepage. 
* Under "GPG Suite" at the very bottom, under MacGPG, you will see *SHA-1*. Copy the string of characters that follow.

### 4) GPGTools signing key

* Visit this [support discussion](http://support.gpgtools.org/discussions/everything/13958-need-the-gpgtools-public-key-to-verify-the-sig-file) for GPGTools. (I had to google for it, but you should note that it's on the gpgtools.org domain.)
* See Steve's second comment, where he gives the Fingerprint. Copy that. Note that this is labeled as a staff post.

### 5) Enigmail signing key

* Visit Enigmail's [integrity page](https://www.enigmail.net/documentation/signature.php).
* Copy what comes after "Fingerprint:".

### 6) Mozilla releases signing key

* Visit Mozilla's [signing key page](http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/25.0/KEY) (again, I had to google for it, but it's on their domain).
* Copy what comes after "Key Fingerprint:" (above the big block of random stuff).

## Thanks!

I appreciate going out of your way to help me with this experiment.

By the way, you may be wondering about Linux. Unfortunately that got too complicated so I'm putting it off. Rather ironic, since Debian-based distributions such as Ubuntu have all the necessary signing keys built in. However installer files for Linux distros tend to be rather particular because of package management. I have to set up a package mirror to make it work, I think. But after that, it should be transparent to the Linux user.
