#!/bin/bash
# usage: create_signer_cert.sh [days]
openssl ca -config openssl.cnf -extensions v3_signer_ca \
      -days $1 -notext -md sha256 \
      -in signer/csr/signer.csr.pem \
      -out signer/certs/signer.cert.pem
chmod 444 signer/certs/signer.cert.pem
