\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-BY Jean-Michel Thiémonge @pianognu.blogspot.fr 

\header {
 title = "Pirouette Cacahuète"
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

\score {
\new Staff <<  
 \clef treble
 \time 3/4
 \key c \major 
 \transpose g c {
\relative c'' {
  d8 c
  b4. b8 a [b]
  d4 d
  d  a a  d8 c
  b4 g  \bar"" \break
  d'8 c
  b4. b8 a [b]
  d4.
  d8 d [d]
  e4.
  c8 e [e]
  d   b  b [b] 
  d4
  c b a
  g4 r4  \bar "|."

 }
}

\addlyrics {
    \set fontSize = #4
    \og \of \oe \oe \od \oe \og \og 
    \og \od \od \og \of \oe \oc 
    \og \of \oe \oe \od \oe \og \og 
    \og \og \oap \of 
    \oap \oap \og \oe \oe \oe
    \og \of \oe \od \oc 
   }

\addlyrics {
  Il é- tait un pe- tit hom- me,
  _Pi- rouet- te, ca- ca- huè- te
  _Il é- tait un pe-tit hom- me,
  _qui a- vait une drôle de mai- son,
  _qui a- vait _une drôle de mai- son
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



