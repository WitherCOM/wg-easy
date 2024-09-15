#!/bin/sh

# Replace keys to envs
sed -i "s/<address>/${ADDRESS}/g" /etc/wireguard/wg0.conf
sed -i "s/<private key>/${PRIVATE_KEY}/g" /etc/wireguard/wg0.conf
sed -i "s/<allowed cidr>/${ALLOWED_CIDR}/g" /etc/wireguard/wg0.conf
sed -i "s/<public key>/${PUBLIC_KEY}/g" /etc/wireguard/wg0.conf
sed -i "s/<endpoint>/${ENDPOINT}/g" /etc/wireguard/wg0.conf

wg-quick up wg0

# Infinite loop to run container
while true
  do
    sleep 1
  done