## What am I doing here, and why am I doing this?

In order to allow for a crypto party with a bad or nonexistent Internet connection, it would save a lot of time for the host to have the installers on hand. However, this poses a threat: Like your mom always told you, don't take crypto software from strangers! The instructions here will give you information that will allow you to verify the software that the host gives you. It is likely that not everybody will have time to follow these instructions, but putting this out there means that those who do not do this are trusting not just the host, but also the most trustworthy of an *open* pool of guests (a closed group could be in cahoots). So it would be appreciated if you help us by being an additional guardian. Getting this information during the party is fine as well if you trust the Internet connection there. However, doing it ahead of time removes more possibility of smoke and mirrors.

### Why not just download the actual software now?

You should feel free to do so. However, again, not everybody may get around to following these instructions before the event. If there are enough guardians who grab the information here, the stragglers can still arguably feel safe installing software given to them.

### Should I be trusting something over the open Internet anyway?

Granted, even your current Internet connection could theoretically be compromised, but there's not much to be done about that. This system aims to not be any *less* secure than your normal Internet connection.

## Instructions

You will gather 6 pieces of information, each of which is 40 alphanumeric characters. Some are known as SHA-1 sums, which confirm file integrity, ie that a file in two different locations are *identical*, but does not confirm authenticity of the file. The others are known as PGP fingerprints, which confirm integrity *and* authenticity, but may not be usable. (In our case, we need SHA-1 sums for the GPG installers because GPG is necessary to make use of a PGP fingerprint) Your host, and any other crypto-aware guests, will explain in more detail at the party, what they mean and how to use them.

Since this is for the sake of verifying untrusted information, you should go straight to the source, rather than this not-so-trusted page. (Especially if the host of the party sent you here). So, instead, this will guide you to how to find it from official pages.

Simply save them, labeled, in a text file that you will bring to the party. Some are known as SHA-1 sums, and the others are known as PGP fingerprints.

### 1) GPG4Win SHA-1 sum

* If you go to: http://www.gnupg.org/ you will see that it endorses gpg4win.org for Windows
* Visit The [gpg4win package integrity](http://www.gpg4win.org/package-integrity.html) page.
* Under the **SHA1 checksums** header, copy the string of characters to the left of `gpg4win-2.2.1.exe`
* It should look something like `29d77c74cc8034054ec050a4099d722759a1a18f`

### 2) GPG4Win Signing Key PGP Fingerprint

* Again, visit the [gpg4win package integrity](http://www.gpg4win.org/package-integrity.html) page.
* This time, click the link to the [Intervation File Distribution Key](https://ssl.intevation.de/). It's under **OpenPGP Signatures**.
* From here, click on [Intevation-Distribution-Key](https://ssl.intevation.de/Intevation-Distribution-Key.asc). It's under **Other Keys/Certificates** on the right (in English).
* On the second line here, you will see "Key fingerprint = ". Copy what comes after that.
* It should look something like `98C5 D66D 7ED8 6C72 E3E5  953D 4DFC 65D0 2B4F 7864`

### 3) GPGTools SHA-1 sum

* If you go to: http://www.gnupg.org/ you will see that it endorses gpgtools.org for Mac OS X.
* Visit the [GPGTools](https://gpgtools.org/) homepage. 
* Under "GPG Suite" at the very bottom, under MacGPG, you will see *SHA-1*. Copy the string of characters that follow.
* It should look something like `29d77c74cc8034054ec050a4099d722759a1a18f`

### 4) GPGTools Signing Key PGP Fingerprint

* Visit this [support discussion](http://support.gpgtools.org/discussions/everything/13958-need-the-gpgtools-public-key-to-verify-the-sig-file) for GPGTools. (Yeah it's pretty lame. I had to google for it, but you should note that it *is* on the gpgtools.org domain.)
* See Steve's [second comment](http://support.gpgtools.org/discussions/everything/13958-need-the-gpgtools-public-key-to-verify-the-sig-file#comment_30424358), where he gives the Fingerprint. Copy that. Note that this is labeled as a staff post.
* It should look something like `98C5 D66D 7ED8 6C72 E3E5 953D 4DFC 65D0 2B4F 7864`

### 5) Enigmail Signing Key PGP Fingerprint

* Visit Enigmail's [integrity page](https://www.enigmail.net/documentation/signature.php).
* Copy what comes after "Fingerprint:".
* It should look something like `98C5 D66D 7ED8 6C72 E3E5 953D 4DFC 65D0 2B4F 7864`

### 6) Mozilla Releases Signing Key PGP Fingerprint

* Visit Mozilla's [signing key page](http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/25.0/KEY) (again, I had to google for it, but it's on their domain).
* Copy what comes after "Key fingerprint = " (above the big block of random stuff).
* It should look something like `98C5 D66D 7ED8 6C72 E3E5  953D 4DFC 65D0 2B4F 7864`

## Thanks!

I appreciate going out of your way to help me with this experiment.

By the way, you may be wondering about Linux. Unfortunately that got too complicated so I'm putting it off. Rather ironic, since Debian-based distributions such as Ubuntu have all the necessary signing keys built in. However installer files for Linux distros tend to be rather particular because of package management. I have to set up a package mirror to make it work, I think. But after that, it should be transparent to the Linux user.
