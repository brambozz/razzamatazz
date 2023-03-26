% TODO
% tempo marking
% chords on pickup to E
% first 8 bars



\version "2.24.0"
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"
\language english

%% header %%

\header {
  title = "Razzamatazz"
  %subtitle = "(tune)"
  composer = "Quincy Jones"
  %meter = "120"
  %piece = "Swing"
  %tagline = "Bram de Wilde"
}

%% Layout settings
\layout {
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%% macros %%

nostems = {
  \hide Stem
}
stems = {
  \undo \hide Stem
}
restbar = { c4 c c c }
fourbar = {\restbar | \restbar | \restbar | \restbar |}
eightbar = {\fourbar \fourbar}

theNotes = \new Voice \with {\consists "Pitch_squash_engraver"} {
\relative c' {
  \key f \minor
  {
    \nostems \improvisationOn 

    % intro
    \eightbar
    \fourbar

    % verse 1
    \eightbar
    \fourbar
    \fourbar


    % verse 2
    \eightbar
    \fourbar
    \fourbar

    % bridge
    \eightbar \restbar
    \eightbar 
    \stems 
    r8 c8 r16 c8. c4 \tuplet 3/2 {c8 c8 c8} | \time 2/4 c2 | 
    \nostems

    % guitar solo + verse 3
    \time 4/4
    \eightbar
    \eightbar

    % bridge 2
    \eightbar \restbar

    % verse 4
    \eightbar
    \fourbar

    % final chorus thing
    \eightbar

    % fade out
    \eightbar
    \eightbar
  }
}
}

theChords = \chordmode {
  \key f \minor

    % intro
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 ||


    % verse 1
    \mark \default \textMark "0:16"
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    ef1:maj7 | d:m7 | df:dim | a2:sus4 af2:7.11+.13 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |

    % verse 2
    \mark \default \textMark "0:56"
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    ef1:maj7 | d:m7 | df:dim | a2:sus4 af2:7.11+.13 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |


    % bridge
    \mark \default \textMark "1:28"
    ef1:maj7/f | ef1:maj7/f | ef1:maj7/f | ef1:9 | 
    ef1:maj7/f | ef1:maj7/f | ef1:maj7/f | ef1:9 | 
    c:/d | 

    \mark \default \textMark "1:46"
    g:m7 | c:m7 | af:/bf | gf:maj7/af | 
    g:m7 | c:m7 | af:/bf | gf:maj7/af | 
    ef1:maj7/f | af2:7.11+.13 |

    % guitar solo + verse 3
    \mark \default \textMark "2:05"
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    ef1:maj7 | d:m7 | df:dim | a2:sus4 af2:7.11+.13 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |

    % bridge 2
    \mark \default \textMark "2:36"
    ef1:maj7/f | ef1:maj7/f | ef1:maj7/f | ef1:9 | 
    ef1:maj7/f | ef1:maj7/f | ef1:maj7/f | ef1:9 | 
    c:/d | 

    % verse 4
    \mark \default \textMark "2:55"
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 |
    ef1:maj7 | d:m7 | df:dim | a2:sus4 af2:7.11+.13 |

    % final chorus thing
    \mark \default \textMark "3:18"
    g1:m7 | c1:m7 | d1:m7 | a2:sus4 af2:7.11+.13 | 
    g1:m7 | c1:m7 | d1:m7 | a2:sus4 af2:7.11+.13 | 

    % fade out
    \mark \default \textMark "3:34"
    g1:m7 | c:m7 | af:/bf | gf:maj7/af | 
    g:m7 | c:m7 | af:/bf | gf:maj7/af | 
    g1:m7 | c:m7 | af:/bf | gf:maj7/af | 
    g:m7 | c:m7 | af:/bf | gf:maj7/af | 

}

\score {
  <<
    \new ChordNames \theChords
    \new Staff  \theNotes
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 88
  }
}
