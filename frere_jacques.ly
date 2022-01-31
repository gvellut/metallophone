\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-BY Wikisource

\header {
 title = "Frère Jacques"
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
 \time 2/4
 \key c \major 
 \transpose g c {
  \relative c'' {
      \partial 2
      g4 a
      b g g a
      b g b c

      d2 b4 c
      d2 d8 e d c
      b4 g \break d'8 e d c

      b4 g g d'
      g,2 g4 d'
      g,2 \bar "|."
    } 
}

\addlyrics {
    \set fontSize = #4
    \oc \od \oe \oc \oc \od \oe \oc
    \oe \of \og \oe \of \og
    \og \oap \og \of \oe \oc \og \oap \og \of
    \oe \oc \oc \og \oc \oc \og \oc
}

\addlyrics{
    Frè -- re Jac -- ques, frè -- re Jac -- ques,
    Dor -- mez- vous_? Dor -- mez- vous_?
    Son -- nez les ma -- ti -- nes, son -- nez les ma -- ti -- nes,
    Ding daing dong Ding daing dong
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
