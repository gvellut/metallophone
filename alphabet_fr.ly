\version "2.18.2"
\include "english.ly"
#(set-global-staff-size 46)
 
\paper { 
  indent = 0 
  system-system-spacing = 
    #'((basic-distance . 12) 
       (minimum-distance . 5) 
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

\header {
 title = "L'ALPHABET"
 tagline = "" 
}

% for reference
% ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ◯

\markup {
  \column {
  \vspace #1
  \fill-line { \column { \line { 
    \fontsize #5 { ① ② ③ ④ ⑤ ⑥ ◯ ◯ }}}}
  \vspace #1
  }
}

<<
 {
   \clef treble
   \time 2/4
   \key c \major 
   \relative c'' {
      c, c g' g a a g2
      f4 f e e d8 d d d c2 \break
      g'4 g f2  e4 e d2
      g8 g  g4 f2 e4 e d2   \break
      c4 c g' g a a g2
      f4 f e e d d4 c2
      \bar "|."
   }
 } 

\addlyrics {
    \set fontSize = #4
    ① ① ⑤ ⑤ ⑥ ⑥ ⑤
       ④ ④ ③ ③ ② ② ② ② ①
       ⑤ ⑤ ④ ③ ③ ②
       ⑤ ⑤ ⑤ ④ ③ ③ ②
       ① ① ⑤ ⑤ ⑥ ⑥ ⑤
       ④ ④ ③ ③ ② ② ①
 }


  \addlyrics {
   A B C D E F G
 H I J K L M N O P
 Q R S T U V W - - X Y - Z
 je con- nais mon al- pha- bet,
 à toi de le ré- pé- ter
  }

 
>>
