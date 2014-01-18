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
  * If not, hop on your chosen source of Internet connection, [go here](github.com/orblivion/offline-cryptoparty/crypto_before.md):
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

## Download, Verifiy, Install

### Download

* Everybody gets everybody's installers
  * Help verify each other
  * Afterwards, no less secure than open Internet.
* **DON'T** install it yet, first we verify
  * Kids, don't take crypto software from strangers!
* As a [zip file](/installers_download/cryptoparty.zip) (Windows, probably Mac)
* As a [tar.gz file](/installers_download/cryptoparty.zip) (Linux, maybe Mac)
* Extract to a directory you can work with

### Windows Only - Install checksum tool

* Find Windows-KB841290-x86-ENU.exe, the installer for Microsoft File Checksum Integrity Verifier
* Right click on it.
  * Digital Signature
  * Microsoft Corporation
  * Certificate Authority
* Once satisfied, go ahead and install.
* You can now verify file integrity (Linux and Mac have this built in)
  * Not authenticity, that's GPG

#### Note

I'm actually not sure whether thunderbird GPG and Enigmail are already signed using the same system. Could you check it? Perhaps this whole process is actually much simpler for you. Though, not sure who the certificate authorities would be.

### People with GPG already - Verify GPG installers

* Get and trust keys
  * Grab the fingerprints if you don't have them, from me (untrusted) if necessary.
  * Everybody read off the fingerprints you got.
  * Now we know we all have the same fingerprints.

`gpg --keyserver cryptoparty.com --recv_keys 3A06537A EC70B1B8 00D026C4 9369CDF3

  * don't trust them yet!
  * Check out the fingerprints:
    * gpg --fingerprint 3A06537A
    * gpg --fingerprint EC70B1B8
    * gpg --fingerprint 00D026C4
    * gpg --fingerprint 9369CDF3
  * Check that they match what you have from preparation (and thus what everybody else has)
  * Now you can trust them.

* Verify installers

`gpg --verify gpg4win-2.2.1.exe.sig`

`gpg --verify "GPG Suite - 2013.10.22.dmg.sig"`

### Comparing Installers

* Carefully check that SHA-1 sum of gpg installers match what you have.
* I could have been sneaky and given everybody different installers

#### Windows:

`fciv gpg4win-2.2.1.exe -sha1`
`fciv "GPG Suite - 2013.10.22.dmg" -sha1`

#### Mac:

`openssl sha1 gpg4win-2.2.1.exe`
`openssl sha1 "GPG Suite - 2013.10.22.dmg"`

#### Linux:

`sha1sum gpg4win-2.2.1.exe`
`sha1sum "GPG Suite - 2013.10.22.dmg"`

Now, as sure as you trust the existing GPG users around you, and the open Internet, you can trust the GPG installer. Install it.

#### Get the keys now

Since you just installed GPG, you should get the verification keys as well:

`gpg --keyserver cryptoparty.com --recv_keys 3A06537A EC70B1B8 00D026C4 9369CDF3

  * don't trust them yet!
  * Check out the fingerprints:
    * gpg --fingerprint 3A06537A
    * gpg --fingerprint EC70B1B8
    * gpg --fingerprint 00D026C4
    * gpg --fingerprint 9369CDF3
  * Check that they match what you have from preparation (and thus what everybody else has)
  * Now you can trust them.

### Verify Enigmail installer

Now that everybody has GPG, and keys that you trust (as much as you trust your home Internet connection), we can verify the other installers.

`gpg --verify enigmail-1.6-sm+tb.xpi.asc`

### Verify Thunderbird installer

* Thunderbird is a bit more of a PITA
* verify checksum file

`gpg --verify thunderbird_SHA1SUMS.asc`

* We proved Mozilla endorses the SHA-1 sum, now we see that the SHA-1 sum matches our installer.
  * Windows: `fciv "Thunderbird Setup 24.2.0.exe" -sha1`
  * Mac: `openssl sha1 "Thunderbird 24.2.0.dmg"`
* look in `thunderbird_SHA1SUMS` file
  * find the checksum for your installer
  * see that it points to your installer

#### Windows:

`sha1 thunderbird_win.exe`
`sha1 thunderbird_mac.dmg`

#### Mac:

`openssl sha1 thunderbird_win.exe`
`openssl sha1 thunderbird_mac.dmg`

#### Linux:

`sha1sum thunderbird_win.exe`
`sha1sum thunderbird_mac.dmg`

### Install Thunderbird and Enigmail

If it all checked out, it should be safe!

* Install Thunderbird
* Set up email account
* Install Enigmail

## Setup

### Publishing Keys

* Generate Key
* Set up to sign and encrypt by default
* Send keys to server
* Assume any interaction with keyservers is public knowledge.

### Signing Keys

* Host will generate a GPG command to import everybody else's key
* Now, [visit it](/allkeys.txt)
* If you'd like, you can also check out the [normal web interface](http://cryptoparty.com:11371/) for the key server.
* Heads Up: I'm hijacking some traffic.
  * I have this router configured to redirect several popular key servers (sks.mit.edu, etc) to here, in case some versions of Enigmail don't make it obvious how to change which server you're talking to.
* For each participant:
  * Everybody (including the participant) pull up their key in Key Management
  * Key owner reads their Fingerprint
  * Everybody else carefully confirms it
  * Everybody else signs it
  * Evereyboy else sets trust

#### Signature Trust

How sure are you that this key belongs to the person it claims to? Depends how well you can *identify* the person you're signing.

TODO confirm the accuracy/usefulness of these. Add more levels.

* Casual - for most people you meet
* Careful - maybe you checked an ID, or you know them personally

#### Owner Trust

How sure are you that the owner of the key will authenticate *other* people honestly, and carefully?

TODO confirm the accuracy/usefulness of these. Add more levels.

* Marginal - for pretty much everybody
* Ultimately - for yourself

### Publishing Signatures

* Push back to key server to give your endorsement of everybody else to everybody
* Refresh keys to get everybody else's endorsements
* Now, one of us just has to refresh our keys to one of the major key servers
