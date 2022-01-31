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
    \fontsize #5 { \oc \oo \oo \of \og \oap \oo \ocp}}}}
  \vspace #0.5
  }
}

\score {
\new Staff <<  
 \clef treble
 \time 2/4
 \key c \major 
 \relative c' {
    f8 f f4
    g8 g c,4
    f8 f f f
    g g c,4
    f8 f f4
    g a
    g8 f g4
    c f,
    f8 f f4
    g a
    g8 f g4
    c f,

  \bar "|."

}

\addlyrics {
    \set fontSize = #4
    \of \of \of \og \og \oc
    \of \of \of \of \og \og \oc
    \of \of \of \og \oap \og \of \og 
    \ocp \of \of \of \of \og \oap
    \og \of \og \ocp \of
   }

\addlyrics {
  Prom' -- nons- nous dans les bois
  pen -- dant que le loup n'y_est pas,
  Si le loup y_é -- tait,
  il nous man -- ge -- rait
  Mais comme il n'y_est pas, il nous mange- ra pas
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
