#!/bin/sh

cat header.html > crypto_before.html
markdown crypto_before.md >> crypto_before.html
cat footer.html >> crypto_before.html

cat header.html > crypto_during.html
markdown crypto_during.md >> crypto_during.html
cat footer.html >> crypto_during.html
