\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-by Jean-Michel Thiémonge @pianognu.blogspot.fr

\header {
 title = "À la claire fontaine"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \oo \og \oo \oo \oo}}}}
  \vspace #0.5
  }
}

\score {
\new Staff <<
 {
   \clef treble
   \key c \major
   \time 4/4  
   \relative c' {
  c4 c8 e e d e [d]
  c4 c8 e e d e4 \break
  e4 e8 d c e g [e]
  g4 g8 e c e d4 \break
  c4 c8 e e d16 c e8 c
  e4 e8 d16 c e8 d c4 
      \bar "|."
   }
 } 

\addlyrics {
    \set fontSize = #4
    \oc \oc \oe \oe \od \oe \od
    \oc \oc \oe \oe \od \oe
    \oe \oe \od \oc \oe \og \oe
    \og \og \oe \oc \oe \od
    \oc \oc \oe \oe \od \oc \oe \oc
    \oe \oe \od \oc \oe \od \oc    
 }

\addlyrics {
  À la clai -- re fon -- tai -- ne,
  m'en al -- lant pro -- me -- ner,
  j'ai trou -- vé l'eau si bel -- le
  que je m'y suis bai -- gné
  Il y'a long -- temps que je t'ai -- me ja -- mais je ne t'ou -- blie -- rai
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
