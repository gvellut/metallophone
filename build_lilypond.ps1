Get-ChildItem . -Filter *.ly | 
    Foreach-Object {
        if ($_.BaseName -eq "common" -or $_.BaseName -eq "colorize") {return ;}
        lilypond $_.Name
        fluidsynth.exe -ni "SF2\Xylophone.sf2" ($_.BaseName + ".mid") -F  ($_.BaseName + ".wav")
    }
