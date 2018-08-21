#!/bin/bash
# usage create_root_cert.sh [days]
openssl req -config openssl.cnf \
      -key private/ca.key.pem \
      -new -x509 -days $1 -sha256 -extensions v3_ca \
      -out certs/ca.cert.pem
