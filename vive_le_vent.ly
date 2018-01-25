\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-by Jean-Michel Thiémonge @pianognu.blogspot.fr

\header {
 title = "Vive le vent"
 tagline = "" 
}

\markup {
  \column {
  \vspace #0.5
  \fill-line { \column { \line { 
    \fontsize #5 { \oc \od \oe \of \og \oo \oo \oo}}}}
  \vspace #0.5
  }
}

<<
 {
   \clef treble
   \time 2/4
   \key c \major 
   \transpose f c {
	\relative c'' {
      a8 a a4 a8 a a4
      a8 c f, [g] a2 \break
	  bf8 bf bf8. bf16  a8 a a8 [ a8]
  	  g8 g g [a] g4 c4 \break
  	  a8 a a4  a8 a a4
  	  a8 c f, [g] a2  \break
  	  bf8 bf bf8.  bf16  a8 a a8 [  a]
  	  c8 c bf [g]  f2
      \bar "|."
	 }
   }
 } 

\addlyrics {
    \set fontSize = #4
    \oe \oe \oe \oe \oe \oe
    \oe \og \oc \od \oe
    \of \of \of \of \oe \oe \oe \oe
    \od \od \od \oe \od \og
    \oe \oe \oe \oe \oe \oe
    \oe \og \oc \od \oe
    \of \of \of \of \oe \oe \oe \oe
    \og \og \of \od \oc
 }

  \addlyrics {
   Vive le vent, vive le vent,
Vive le vent d'hi- ver
Qui s'en va sif- flant, souf- flant
Dans les grands sa- pins verts, oh!
Vive le temps, vive le temps,
Vive le temps d'hi- ver;
Boules de neige et jour de l'an;
Et bonne an- née grand- mère.
  }

 
>>


