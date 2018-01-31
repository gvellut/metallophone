#!/bin/bash

for i in *.ly; do
    [ -f "$i" ] || break
    if [ "$i" == "common.ly" ] || [ "$i" == "colorize.ly" ]; then
       continue;
    fi
    lilypond $i
done

xelatex book_fr.tex
xelatex book_fr.tex

xelatex cover_fr.tex
