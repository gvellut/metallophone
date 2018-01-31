\version "2.18.2"

% for reference
% ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ◯

#(define-markup-command (colorcircle layout props text) (markup?)
  "Draw a double box around text."
  (interpret-markup layout props
    #{\markup \raise #0.6 \circle \fontsize #-6 \pad-markup #0.8 #text #}))

% empty circles with bar number to colorize
oc = \markup \colorcircle 1
od = \markup \colorcircle 2
oe = \markup \colorcircle 3
of = \markup \colorcircle 4
og = \markup \colorcircle 5
oap = \markup \colorcircle 6
obp = \markup \colorcircle 7
ocp = \markup \colorcircle 8
oo =  \markup \raise #1.3 \circle \fontsize #-5 \pad-markup #0.9 "  "
