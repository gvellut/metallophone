\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

\header {
 title = "Au clair de la Lune"
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
   \time 4/4
   \key c \major
   \transpose g c {

 \relative c'' {
   \repeat "unfold" 2 {
        c4 c c d
        e2 d
        c4 e d d
        c1
   }

    d4 d d d
    a2 a
    d4 c b a
    g1
    c4 c c d
    e2 d
    c4 e d d
    c1


  
   \bar "|."
   }
 }

 \addlyrics {
    % set size to same as in header
    \set fontSize = #4
    \repeat "unfold" 2 {
    	\of \of \of \og
        \oap \og 
        \of \oap \og \og
        \of
    }

    \og \og \og \og 
    \od \od
    \og \of \oe \od 
    \oc

    \of \of \of \og
    \oap \og 
    \of \oap \og \og
    \of
 }

 \addlyrics {
    Au clair de la Lu -- ne
    mon a -- mi Pier -- rot
    prê -- te moi ta plu -- me
    pour é -- crire un mot
    ma chan -- delle est
    mor -- te
    je n'ai plus de
    feu,
    ou -- vre moi ta
    por -- te
    pour l'a -- mour de
    Dieu
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
