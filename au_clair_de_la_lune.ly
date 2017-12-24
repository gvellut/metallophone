\paper { indent = 0 }

#(set-global-staff-size 52)

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

\header{
  title = "Au clair de la lune"
  tagline = "" 
}

% for reference
% ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ◯

\markup {
  \column {
  \null
  \fill-line { \column { \line { ① ② ③ ◯ ◯ ◯ ◯ ◯ }}}
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
    \set fontSize = #-1
    \repeat "unfold" 2 {
    ① ① ① ② ③ ②
    ① ③ ② ② ①
	}
 }

 \addlyrics {
    Au clair de la Lu -- ne
    mon a -- mi Pier -- rot
    prê -- te moi ta plu -- me
    pour é -- crire un mot
 }

>>

\version "2.18.2"
