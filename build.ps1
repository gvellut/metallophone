Get-ChildItem . -Filter *.ly | 
    Foreach-Object {
        if ($_.BaseName -eq "common" -or $_.BaseName -eq "colorize") {return ;}
        lilypond $_.Name
    }

xelatex book_fr.tex
xelatex book_fr.tex

xelatex cover_fr.tex

# conda activate xyl_ultimate
python .\remove_last_page.py .\book_fr.pdf 