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
    \repeat volta 2 {
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
    
  }

  \repeat volta 2 {
    \break \cadenzaOn
    s2^"Parlé"_\markup {\large "Loup, y es-tu ?"} \bar "|"
    s2^"LE LOUP"_\markup {\large \left-column { "1. Non j'mets ma ch'mise" "2. Non j'mets ma culotte" 
	"3. Non j'mets mes bottes"  }} \cadenzaOff \bar "|"
    \break

    a8 a
    g4 a8 a
    g4 a8 b
    c b a d
    g,4
  }

  \break \cadenzaOn
  s2^"Parlé"_\markup {\large "Loup, y es-tu ?"} \bar "|"
  s2^"LE LOUP"_\markup {\large "Oui, j'prends mon fusil"} \bar "|"
  s2^"Parlé"_\markup {\large "Sauvons-nous !"} \bar "|"  \cadenzaOff 
  \break

  a8^"LE LOUP" a
  g4 a8 a

  b4 a8 g
  a4 d
  g, \break
 
  a8^"LA BICHE" a 
  g4 a8 a
  b4 a8 g
  a4 d
  g, \bar "|."
 }
}

\addlyrics {
    \set fontSize = #4
   }

\addlyrics {
  Prom' -- nons- nous dans les bois
  Pen -- dant que le loup n'y_est pas,
  Si le loup y_é -- tait,
  Il nous man -- ge -- rait.
  Mais comme il n'y_est pas, il nous mange- ra pas. 

  Prom' -- nons- nous dans les bois,
  Tan -- dis que le loup n'y_est pas,

  Je suis loup, je suis loup qui te man -- ge -- ra
  Je suis biche, je suis biche qui me dé -- fen -- dra
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


