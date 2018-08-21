#!/bin/bash
openssl req -config signer/openssl.cnf -new -sha256 \
      -key signer/private/signer.key.pem \
      -out signer/csr/signer.csr.pem
