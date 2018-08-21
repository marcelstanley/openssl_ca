#!/bin/bash
# usage: create_agent_cert.sh [name]
openssl req -config signer/openssl.cnf \
      -key signer/private/$1.key.pem \
      -new -sha256 -out signer/csr/$1.csr.pem
