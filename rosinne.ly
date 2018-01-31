\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-BY Wikisource

\header {
 title = "Bonjour, belle Rosinne"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \of \og \oap \obp \ocp}}}}
  \vspace #0.5
  }
}

\score {
\new Staff <<  
 \clef treble
 \time 6/8
 \key c \major 
 \transpose ef c {
  \relative c'' {
      g4. bf
      af8 g f g4 ef8
      g4. bf
      af8 g f ef4 r8

      g4. bf
      af8 g f g4 ef8
      g4. bf
      af8 g f ef4 r8

      bf' af g bf af g
      c c c bf4.
      c8 d ef bf4 bf8
      af g f g4 ef8

      bf' af g bf af g
      c c c bf4.
      c8 d ef bf4 bf8
      af g f ef4  r8
      \bar "|."
  }
}

\addlyrics {
    \set fontSize = #4
    \oe \og \of \oe \od \oe \oc
    \oe \og \of \oe \od \oc
    \oe \og \of \oe \od \oe \oc
    \oe \og \of \oe \od \oc
    \og \of \oe \og \of \oe \oap \oap \oap \og
    \oap \obp \ocp \og \og \of \oe \od \oe \oc
    \og \of \oe \og \of \oe \oap \oap \oap \og
    \oap \obp \ocp \og \og \of \oe \od \oc
}

\addlyrics {
  Bon -- jour bel -- le Ro -- si -- ne,
      Com -- ment vous por -- tez- vous_?
      Vous me fai -- tes la mi -- ne,
      Di -- tes- moi, qu'a -- vez- vous_?
      C'est mon a -- mi qu'est par -- ti ce ma -- tin,
      Ce qui me cau -- se, ce qui me cau -- se...
      C'est mon a -- mi qu'est par -- ti ce ma -- tin,
      Ce qui me cau -- se bien du cha -- grin. 
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




