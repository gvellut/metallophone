\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-BY Wikisource

\header {
 title = "Il court, il court, le furet"
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
  r8 g c d
  e4 d8 d \break
  
  a4 c8 b
  a g a b \break
  c16 c g8 c d
  
  e4 d8 d
  a4 c8 b
  a g a c
  
  c r c b
  a g a b
  c4 c8 b
  
  a g a b
  c c c b
  a g a b \break
  
  c4 c8 b
  a g a b
  c \bar "|."
  }
}

\addlyrics {
    \set fontSize = #4
    \oc \of \og \oap \og \og
    \od \of \oe \od \oc \od \oe
    \of \of \oc \of \og \oap \og \og
    \od \of \oe \od \oc \od \of \of
    \of \oe \od \oc \od \oe \of 
    \of \oe \od \oc \od \oe \of \of 
    \of \oe \od \oc \od \oe \of 
    \of \oe \od \oc \od \oe \of
}

\addlyrics{
  Il court, il court, le fu -- ret, le fu -- ret du bois Mes -- da -- mes_;
  il court, il court, le fu -- ret, le fu -- ret du bois jo -- li,
  il a pas -- sé par i -- ci, le fu -- ret du bois Mes -- da -- mes,
  il a pas -- sé par i -- ci, le fu -- ret du bois jo -- li.
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

