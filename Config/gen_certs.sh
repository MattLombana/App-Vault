#! /bin/bash

openssl \
req \
-newkey rsa:2048 \
-days 365 \
-nodes \
-x509 \
-subj "/C=US/ST=Texas/L=Austin/O=Homelab/OU=Homelab/CN=*.example.com" \
-keyout ./Data/certs/vault-cert.key -out ./Data/certs/vault-cert.crt
chmod g+r ./Data/certs/vault-cert.key # need to do this so the vault user can read the key
