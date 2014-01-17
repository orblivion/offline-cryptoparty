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
* Sha1sums and Fingerprints for software
  * Did you get them ahead of time?
  * If not, hop on your chosen source of Internet connection, go here:
    * github.com/orblivion/offline-cryptoparty/crypto_before.md

## Installers

Please download [everybody's installers](althethings.zip) what you will be installing, but don't install it yet:

TODO Link above with everything Windows and Mac, and Enigmail Linux

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

### Extract

* **DON'T** install anything yet.
  * Kids, don't take crypto software from strangers!
* You have everybody's installers. You will help verify each other's stuff.
* No less secure than open Internet.

### Windows Only

* Find sha1sum program # TODO get its name
* Right click on it.
  * Digital Signature
  * Microsoft Corporation
  * Certificate Authority
* Once satisfied, go ahead and install.
* You can verify files. (Linux and Mac have this built in)

### People with GPG already

* Get all the development keys from my keyserver
  * gpg --recv_keys --keyserver cryptoparty.com # TODO all the keys
  * don't trust them yet!
  * gpg --fingerprint TODO some filter for the right ones, hmm
  * Check that they match what you got.
  * Now you can trust them.
* gpg --verify 

1) People with GPG already installed can check the GPG signature of all the GPG installers to confirm that the copy *they* have on their computer is legitimate.
2) Everybody run the sha1sum -c (or equivalent) on gpg_installers.sha1 file. This establishes that all of the files match the description in the gpg_installers.sha1sum file I supplied. Take a look at the file to see that it points to all GPG installers. This doesn't establish much yet, since I supplied gpg_installers.sha1sum.
3) Everybody run plain sha1sum on gpg_installers.sha1sum file. The sum you should get, I will read out loud, and you should verify. This establishes that everybody has same gpg_installers.sha1sum file on their computer, and thus all the same GPG installer files on their computer. (I could have been sneaky and given everybody different installers)
4) Now, as sure as you trust the existing GPG users around you, and the open Internet, you can trust the GPG installer. Install that.
5) As a second assurance, you can just check the sha1sum you got from GPG's website, using your favorite Internet connection, and use that.
6) Now that you have GPG, you can check the signature of the Thunderbird and Enigmail installers. Everybody who didn't have GPG installed, run:

gpg --recv_keys ... (all the keys)

Windows:
whateversha1 allfiles.sha1sum


