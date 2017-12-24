\version "2.18.2"
\include "english.ly"
#(set-global-staff-size 32)

\paper { 
  indent = 0 
  system-system-spacing = 
    #'((basic-distance . 12) 
       (minimum-distance . 8) 
       (padding . 2) 
       (stretchability . 10)) 
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup.staff-affinity = ##f
    \override VerticalAxisGroup.staff-staff-spacing =
       #'((basic-distance . 0)
	   (minimum-distance . 2)
	   (padding . 2))
  }
}

\header{
  title = "Vive le vent"
  tagline = "" 
}

% for reference
% ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ◯

\markup {
  \column {
  \vspace #1
  \fill-line { \column { \line { 
    \fontsize #9 { ① ② ③ ④ ⑤ ◯ ◯ ◯ }}}}
  \vspace #1
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
    \set fontSize = #8
    ③ ③ ③ ③ ③ ③ 
    ③ ⑤ ① ② ③
    ④ ④ ④ ④ ③ ③ ③ ③ 
    ② ② ② ③ ② ⑤
    ③ ③ ③ ③ ③ ③ 
    ③ ⑤ ① ② ③
    ④ ④ ④ ④ ③ ③ ③ ③
    ⑤ ⑤ ④ ② ①
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


