\version "2.18.2"
\include "english.ly"
#(set-global-staff-size 46)
#(set-default-paper-size "letter")
 
\paper { 
  indent = 0 
  system-system-spacing = 
    #'((basic-distance . 12) 
       (minimum-distance . 1) 
       (padding . 1) 
       (stretchability . 1)) 
  print-page-number = ##f
  top-margin = 0.5\in
  bottom-margin = 0.5\in
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
	   (minimum-distance . 0)
	   (padding . 1.5))
  }
}

