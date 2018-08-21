#!/bin/bash
# usage: create_agent_cert.sh [name] [days]
openssl ca -config signer/openssl.osx.cnf \
      -extensions server_cert -days $2 -notext -md sha256 \
      -in signer/csr/$1.csr.pem \
      -out signer/certs/$1.cert.pem
chmod 444 signer/certs/$1.cert.pem
