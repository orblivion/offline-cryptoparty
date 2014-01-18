## Presentation

* On host's screen.

## Explanation of software

* Thunderbird - mail client
* Enigmail
* GPG

## A Favor for Me

* Experiment
  * low or no bandwidth
  * Pretend we're at Porcfest (at a campground in rural New Hampshire)
* PGP is not normally this complicated!
  * This experiment is somewhat complicated, but afterwards there will be no need for cmd line
* Trust
  * Crypto aware: Speak Up! Stop me if I'm wrong.
  * Not crypto aware: Do not trust me! (in particular)
  * I'll (hopefully) convince everybody that you can trust my software.
* SHA-1 and PGP Fingerprints for software
  * Did you get them ahead of time?
  * If not, hop on your chosen source of Internet connection, go here:
    * github.com/orblivion/offline-cryptoparty/crypto_before.md
* SHA-1
  * Verify Integrity
  * If two files have the same SHA-1, they're the same file
  * No telling where the file came from
* GPG
  * Establish authenticity
  * Requires trusted public key of author
* Combined together
  * GPG authenticate on one computer
  * SHA-1 sum on both computers to compare
  * Authenticated on both computers
  * Assumes the authenticator is trusted
  * Multiple people, open invitation

## Installers

What you'll be installing:

### Windows

* Sha1Sum program
* Thunderbird
* GPG
* Enigmail

### Mac

* Thunderbird (versions)
* GPG (versions)
* Enigmail (versions)

### Linux

* Didn't finish your part of the experiment done in time.
* Thunderbird (from repository)
* GPG
  * If you have a Debian or a derived distro, such as Ubuntu or Mint, you already have it.
  * from repository otherwise
* Enigmail (from repository, or using Thunderbird's interface)

## Instructions

### Download

* Everybody gets everybody's installers
  * Help verify each other
  * Afterwards, no less secure than open Internet.
* **DON'T** install it yet, first we verify
  * Kids, don't take crypto software from strangers!
* As a [zip file](installers/althecryptothings.zip) (Mac and Windows)
* As a [tar.gz file](installers/althecryptothings.tar.gz) (Mac and Windows)
* Extract to a directory you can work with

TODO link above with everything Windows and Mac, and Enigmail Linux. Or I guess just put the files there.

### Windows Only

* Find sha1sum program # TODO get its name
* Right click on it.
  * Digital Signature
  * Microsoft Corporation
  * Certificate Authority
* Once satisfied, go ahead and install.
* You can now verify file integrity (Linux and Mac have this built in)
  * Not authenticity, that's GPG

### People with GPG already

* Get and trust keys
  * gpg --recv_keys --keyserver cryptoparty.com # TODO all the keys
  * don't trust them yet!
  * gpg --fingerprint TODO all the keys
  * Check that they match what you got.
  * Now you can trust them.
* Verify installers

TODO correct file names and stuff. May require `SHA-1` file :(.

`gpg --verify gpg_win.sig`

`gpg --verify gpg_mac.sig`

### Comparing Installers

TODO correct command and installer file names

* Windows:

`sha1 gpg_win.exe`
`sha1 gpg_win.exe`

* Mac:

`openssl sha1 gpg_win.exe`
`openssl sha1 gpg_win.exe`

* Linux:

`sha1sum gpg_win.exe`
`sha1sum gpg_win.exe`

2) Everybody run the sha1sum -c (or equivalent) on gpg_installers.sha1 file. This establishes that all of the files match the description in the gpg_installers.sha1sum file I supplied. Take a look at the file to see that it points to all GPG installers. This doesn't establish much yet, since I supplied gpg_installers.sha1sum.
3) Everybody run plain sha1sum on gpg_installers.sha1sum file. The sum you should get, I will read out loud, and you should verify. This establishes that everybody has same gpg_installers.sha1sum file on their computer, and thus all the same GPG installer files on their computer. (I could have been sneaky and given everybody different installers)
4) Now, as sure as you trust the existing GPG users around you, and the open Internet, you can trust the GPG installer. Install that.
5) As a second assurance, you can just check the sha1sum you got from GPG's website, using your favorite Internet connection, and use that.
6) Now that you have GPG, you can check the signature of the Thunderbird and Enigmail installers. Everybody who didn't have GPG installed, run:

gpg --recv_keys ... (all the keys)

Windows:
whateversha1 allfiles.sha1sum



Later: everybody:


`gpg --verify thunderbird_mac.sig`

`gpg --verify thunderbird_win.sig`

`gpg --verify enigmail.sig`

