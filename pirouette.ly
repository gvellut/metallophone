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
  d2 d8
  d  a4 a  d8 c
  b4 g  \bar"" \break
  d'8 c
  b4. b8 a [b]
  d4.
  d8 d [d]
  e4.
  c8 e [e]
  d4.  b8  b [c] 
  d4
  c b a
  g  \bar "|."

 }
}

\addlyrics {
    \set fontSize = #4
    \og \of \oe \oe \od \oe \og \og \og
    \og \od \od \og \of \oe \oc 
    \og \of \oe \oe \od \oe \og \og 
    \og \og \oap \of 
    \oap \oap \og \oe \oe \oe
    \og \of \oe \od \oc 
   }

\addlyrics {
  Il é -- tait un pe -- tit homme,
  _Pi -- rou -- et -- te, ca -- ca -- huè -- te
  _Il é -- tait un pe -- tit homme,
  _qui a -- vait une drôle de mai -- son,
  _qui a -- vait _une drôle de mai -- son
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
