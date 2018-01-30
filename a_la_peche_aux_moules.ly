\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

\header {
 title = "A la pêche aux moules"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \of \og \oap \oo \ocp}}}}
  \vspace #0.5
  }
}

<<
 {
   \clef treble
   \time 2/4
   \key c \major 
   \relative c' {
      c8 e c e g16 g g g g8 g8
      a a a c g g g4
      f8 f f g \break e16 e e e e8 e
      d d d e c e g4
      f8 f f g \break e16 e e e e8 e
      d d d e c c c4

      \bar "|."

   }
 } 

\addlyrics {
    \set fontSize = #4
    \oc \oe \oc \oe \og \og \og \og \og \og
    \oap \oap \oap \ocp \og \og \og
    \of \of \of \og \oe \oe \oe \oe \oe \oe
    \od \od \od \oe \oc \oe \og
    \of \of \of \og \oe \oe \oe \oe \oe \oe
    \od \od \od \oe \oc \oc \oc
 }

  \addlyrics {
    A la pêche aux mou- les, mou- les, mou- les,
    Je n'veux plus "y al-" ler ma- man,
    les gens de la vil- le, vil- le, vil- le
    m'ont pris mon pa- nier ma- man.
    Les gens de la vil- le, vil- le, vil- le
    m'ont pris mon pa- nier ma- man.

  }

 
>>



