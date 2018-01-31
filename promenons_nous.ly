\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-BY Wikisource

\header {
 title = \markup { \center-column {\line{"Promenons-nous"} \line{"dans les bois"}}}
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
    a8 a
    g4 a8 a

    g4 a8 b
    c b a d
    g,4 a8 a8

    g4 a
    b a8 g
    a4 d
    g, 
    
    g8 g g4 a b a8 g a4 d g,
    
  
  \bar "|."
 }
}

\addlyrics {
    \set fontSize = #4
    \od \od \oc \od \od \oc
    \od \oe \of \oe \od \og \oc
    \od \od \oc \od \oe \od \oc \od 
    \og \oc \oc \oc \oc \od \oe
    \od \oc \od \og \oc
   }

\addlyrics {
  Prom' -- nons- nous dans les bois
  Pen -- dant que le loup n'y_est pas,
  Si le loup y_é -- tait,
  Il nous man -- ge -- rait.
  Mais comme il n'y_est pas, il nous mange- ra pas. 
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


