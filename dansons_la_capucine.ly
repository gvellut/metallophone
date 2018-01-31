\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

\header {
 title = "Dansons la capucine"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \oo \og \oo \oo \oo}}}}
  \vspace #0.5
  }
}

\score {
\new Staff <<
 {
   \clef treble
   \time 2/4
   \key c \major 
    \transpose d c {
      \relative c' {
	d4 e8 e a a fs fs 
        d4 e8 e a a fs4
        d e8 e a a fs fs
        d4 e8 e a a d,4
        \bar "||"
     }
   }
 } 

\addlyrics {
    \set fontSize = #4
    \oc \od \od \og \og \oe \oe
    \oc \od \od \og \og \oe 
    \oc \od \od \og \og \oe \oe
    \oc \od \od \og \og \oc
    }

  \addlyrics {
    Dan- sons la ca- pu- ci- ne
   Y'a pas de pain chez nous
   Y'en a chez la voi- si- ne
   Mais ce n'est pas pour nous.
  }

 
>>

\layout { }

\midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }

}

\markup {
  \column{
  \line{2.}
  \line{Dansons la capucine,}
  \line{Y'a pas de vin chez nous...}
  \vspace #0.5
  \line{3.}
  \line{Dansons la capucine}
  \line{Y'a pas de feu chez nous...}
  \vspace #0.5
  \line{4.}
  \line{Dansons la capucine}
  \line{Y'a du plaisir chez nous}
  \line{On pleur' chez la voisine}
  \line{On rit toujours chez nous}
  }
}




