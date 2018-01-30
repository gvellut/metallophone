\version "2.18.2"
\include "common.ly"
\include "colorize.ly"

% Adapted from typeset CC-by Jean-Michel Thiémonge @pianognu.blogspot.fr

\header {
 title = "Le roi Dagobert"
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

\score {
\new Staff <<
  \relative c' {
    \key c \major
    \time 6/8
    \partial 8
    e8 e4 d8 d4 c8 c4. d
 e8 f e d c d  c4. r8  
 c d 
 e4 e8 e f g d4 d8 d
 c d
 e4 e8 e f g d4 d8 d4 
 e8 e4 d8 d4 c8 c4. d
 e8 f e d c d c4. \bar "|."   
  }

 \addlyrics {
    \set fontSize = #4
    \repeat "unfold" 2 {
    	\oe \oe \od \od \oc \oc \od 
        \oe \of \oe \od \oc \od \oc 
        \oc \od
        \oe \oe \oe \of \og \od \od \od
        \oc \od
	\oe \oe \oe \of \og \od \od \od
        \oe \oe \od \od \oc \oc \od
        \oe \of \oe \od \oc \od \oc
    }
 }


  \addlyrics{
   Le bon roi Da- go- bert a
 mis sa cu- lotte à l'en- vers.
 Le grand Saint- E- loi
 lui dit Ô mon roi,
 vo- tre ma- jes- té est mal cu- lo- té.
 C'est vrai, lui dit le Roi. Je vais la re- mettre à l'en- droit
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

