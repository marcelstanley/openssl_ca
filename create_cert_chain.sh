#!/bin/bash
cat signer/certs/signer.cert.pem \
      certs/ca.cert.pem > signer/certs/staging.pem
chmod 444 signer/certs/staging.pem
