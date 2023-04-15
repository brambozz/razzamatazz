\include "general.ly"

leadSheet = \new Voice \with {\consists "Pitch_squash_engraver"} {
\relative c' {
  \key g \minor
  {
    \nostems \improvisationOn 

    % intro
    r1 | r1 | r1 |
    \stems
    r2 g~ | 
    g g8 d' c d | r2 g,8 d' c d | r2 g,8 d' c d | af1 |
    \nostems
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
    \stems 
    r8 c8 r16 c8. c4 \tuplet 3/2 {c8 c8 c8} | c2 r8 c8-> r4 \fine 
    \nostems
  }
}
}




theChords = \chordmode {
  \key g \minor
  \tempo 4=120
    % intro
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | af1:7.11+.13 |
    g1:m7 | c2:m7 d2:m7 | g1:m7 | c2:m7 d2:m7 ||


    % verse 1
    \mark \default \textMark "0:24"
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
    g1:m7 | c:m7 | af:/bf | gf:maj7/af | 
    g:m7 | c:m7 | af:/bf | gf:maj7/af | 
    s8 g8:m7 s16 s8. ef4:maj7/f \tuplet 3/2 {f8:7 gf8:7 g8:7} | \time 2/4 af2:7.11+.13| 

    % guitar solo + verse 3
    \mark \default \textMark "2:05"
    \time 4/4
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
    s8 g8:m7 s16 s8. ef4:maj7/f \tuplet 3/2 {f8:7 gf8:7 g8:7} | af2:7.11+.13 s8 g8:m7 s4| 

}
