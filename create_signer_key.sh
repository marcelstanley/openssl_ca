#!/bin/bash
openssl genrsa -aes256 \
      -out signer/private/signer.key.pem 4096
chmod 400 signer/private/signer.key.pem
