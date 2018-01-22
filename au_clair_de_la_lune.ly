\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

\header {
 title = "Au clair de la lune"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \oo \oo \oo \oo \oo}}}}
  \vspace #0.5
  }
}

<<

 \relative c' {
   \clef treble
   \time 4/4
   \key c \major

   \repeat "unfold" 2 {
       c8 c c d e4 d c8 e d d c2
   }
  
   \bar "|."
 }

 \addlyrics {
    % set size to same as in header
    \set fontSize = #4
    \repeat "unfold" 2 {
    	\oc \oc \oc \od \oe \od \oc \oe \od \od \oc
    }
 }

 \addlyrics {
    Au clair de la Lu -- ne
    mon a -- mi Pier -- rot
    prê -- te moi ta plu -- me
    pour é -- crire un mot
 }

>>

