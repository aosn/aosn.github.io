#!/bin/bash

echo -n "Type GitHub user name> "
read user
url16="https://github.com/${user}.png?size=16"
url64="https://github.com/${user}.png?size=64"
echo "[1/2] Downloading ${url16}"
wget -nv -O images/users/${user}_16.png "${url16}"
echo "[2/2] Downloading ${url64}"
wget -nv -O images/users/${user}_64.png "${url64}"
echo "Done"
