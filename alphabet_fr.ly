\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

\header {
 title = "L'alphabet"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \of \og \oap \oo \oo}}}}
  \vspace #0.5
  }
}

<<
 {
   \clef treble
   \time 2/4
   \key c \major 
   \relative c'' {
      c, c g' g a a g2
      f4 f e e d8 d d d c2 \break
      g'4 g f2  e4 e d2
      g8 g  g4 f2 e4 e d2   \break
      c4 c g' g a a g2
      f4 f e e d d4 c2
      \bar "|."
   }
 } 

\addlyrics {
    \set fontSize = #4
    \oc \oc \og \og \oap \oap \og
       \of \of \oe \oe \od \od \od \od \oc
       \og \og \of \oe \oe \od
       \og \og \og \of \oe \oe \od
       \oc \oc \og \og \oap \oap \og       
       \of \of \oe \oe \od \od \oc       
 }


  \addlyrics {
   A B C D E F G
 H I J K L M N O P
 Q R S T U V W - - X Y - Z
 je con- nais mon al- pha- bet,
 à toi de le ré- pé- ter
  }

 
>>
