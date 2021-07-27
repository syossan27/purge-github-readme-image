#!/bin/sh

set -euxo pipefail

url=https://api.github.com/repos/${REPOSITORY}/readme

echo ${REPOSITORY}

curl -H 'Authorization: token '${TOKEN} -H 'Accept: application/vnd.github.v3.html' -sL ${url} \
| grep -oE '<img src="https?://camo.githubusercontent.com/[^"]+' \
| sed -e 's/<img src="//' \
| while read url; do
  echo "Purging: $url"
  curl -sX PURGE "$url" -o /dev/null
done
