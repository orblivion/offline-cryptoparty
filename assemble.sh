#!/bin/sh

cat header.htmlpart > crypto_before.html
markdown crypto_before.md >> crypto_before.html
cat footer.htmlpart >> crypto_before.html

cat header.htmlpart > crypto_during.html
markdown crypto_during.md >> crypto_during.html
cat footer.htmlpart >> crypto_during.html
