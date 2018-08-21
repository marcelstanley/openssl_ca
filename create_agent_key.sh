#!/bin/bash
# usage: create_agent_key.sh [name]
openssl genrsa -aes256 \
      -out signer/private/$1.key.pem 2048
chmod 400 signer/private/$1.key.pem
