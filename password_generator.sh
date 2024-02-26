#!/bin/bash

length=12
password=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | head -c "$length")

echo "Generated Password: $password"
