## Presentation

## Explanation of software

* Thunderbird - mail client
* Enigmail
* GPG

## A Favor for Me

* Speak Up! If you're crypto-aware, stop me if I'm wrong. Others: do not trust me in particular!
* Pretend we're at Rogers Campground in New Hampshire
* Download from me, but don't trust my software. I'll show you why we can trust it. Other crypto-aware people serve as a check.
* Everybody hop on your chosen source of Internet connection, go to the following page, and get this info, unless you already have:
  * gitorious.com/orblivion/cryptoparty-kit

Here's what you will be installing, but don't install it yet:

* Windows
Sha1Sum program
Thunderbird
GPG
Enigmail
<a href="blah.zip">Link with everything Windows, Mac, and Linux></a>

* Mac

Thunderbird (versions)
GPG (versions)
Enigmail (versions)
<a href="blah.zip">Link with everything Windows, Mac, and Linux></a>

* Linux

Thunderbird (versions, per OS)
GPG (only if you don't already have it. Debian, Ubuntu, Mint, for instance, should already have it. try running gpg in a command line) (per OS)
Enigmail (versions, per thunderbird)
<a href="blah.tar.bz">Link with everything Windows, Mac, and Linux></a>

Extract your files into a directory. DO NOT install anything without being told to, because you do not know the authenticity of these files. Kids, don't take crypto software from strangers! What we have in front of you are everybody's installers. What I aim to establish, as sure as you can be over the open Internet, is that these are the genuine installer files. Here are the steps to this:

1) Windows Users: Look at the sha1sum program. Right click on it. You will see that it is signed by Microsoft. This is using the Certificate Authority system built into Windows. It's not great, but it's as good as you'll get in your general Windows experience. Once you're satisfied, install this program. This program will help you verify files.
2) GPG users, run:

gpg --recv_keys .... (all the keys)

1) People with GPG already installed can check the GPG signature of all the GPG installers to confirm that the copy *they* have on their computer is legitimate.
2) Everybody run the sha1sum -c (or equivalent) on gpg_installers.sha1 file. This establishes that all of the files match the description in the gpg_installers.sha1sum file I supplied. Take a look at the file to see that it points to all GPG installers. This doesn't establish much yet, since I supplied gpg_installers.sha1sum.
3) Everybody run plain sha1sum on gpg_installers.sha1sum file. The sum you should get, I will read out loud, and you should verify. This establishes that everybody has same gpg_installers.sha1sum file on their computer, and thus all the same GPG installer files on their computer. (I could have been sneaky and given everybody different installers)
4) Now, as sure as you trust the existing GPG users around you, and the open Internet, you can trust the GPG installer. Install that.
5) As a second assurance, you can just check the sha1sum you got from GPG's website, using your favorite Internet connection, and use that.
6) Now that you have GPG, you can check the signature of the Thunderbird and Enigmail installers. Everybody who didn't have GPG installed, run:

gpg --recv_keys ... (all the keys)

Windows:
whateversha1 allfiles.sha1sum


