#!/usr/bin/env bash
# TODO: use nix shebang?!

if [ -d out ]
then
    echo "ERROR: out already exists"
    exit 1
fi

mkdir out
find . -type d '!' -path './.git/*' '!' -name .git '!' -name out '!' -path './out/*' '!' -name '.' -exec mkdir 'out/{}' ';'
find . -type f -name '*.md' '!' -path './out/*' -exec bash -c 'i="$1"; pandoc -f markdown -s -t html "$i" > $(echo "out/${i%.md}.html")' sh {} ';'
(cd out && tree -o index.html -H .)
