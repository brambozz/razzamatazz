% TODO
% chords on pickup to E
% add accents to first 8 bars of leadsheet
% double bar lines at sections

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
  % meter = "120"
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
restbar = { g4 g g g }
fourbar = {\restbar | \restbar | \restbar | \restbar |}
eightbar = {\fourbar \fourbar}

slash = {
  \improvisationOn
  \temporary\override NoteHead.Y-offset = #0
  \hide Stem
}

noslash = {
  \improvisationOff
  \revert NoteHead.Y-offset
  \undo \hide Stem
}

leadSheet = \new Voice \with {\consists "Pitch_squash_engraver"} {
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

trumpet = \new Voice \relative c'' {
    r1 | r1 | r1 | r1 |
    r1 | r1 | r1 |  c2 d4 bf' | 
    g4\bendAfter #-4 r r2 |
}

tenor = \new Voice \relative c' {
    r1 | r1 | r1 | r1 |
    r1 | r1 | r1 |  c2 d4 bf' | 
    g4\bendAfter #-4 r r2 |
}

keys = \new Voice \relative c''' {
    <c d f>4 <c d f> <bf c ef> <bf c ef> | <a bf d> <a bf d> <g a c> <g a c> |
    <f g bf> <f g bf> <e f a> <e f a> | <d e g> <d e g>
    <c d f>4 <c d f> | <bf c ef> <bf c ef>  <a bf d> <a bf d> | <g a c> <g a c> 
    <f g bf> <f g bf> | <e f a> <e f a> <d e g> <d e g> | 

    \slash \stems 
    af1 |

}

guitarOne = \new Voice \relative c'' {
    g8 f g r g16 f d c r4 | g'8 d f fs g r g f | 
    g r g16 f d c r4 g'8 d | f fs g r 
    g8 f g r | g16 f d c r4 g'8 d f fs | g r g f  
    g r g16 f d c | r4 g'8 d f fs g r | 

    \slash \stems
    \repeat unfold 16 {g16}  
}

guitarTwo = \new Voice \relative c'' {
    r1 | r1 | r1 | r2 g~ | 
    g g8 d c d | r2 g8 d c d | r2 g8 d c d | af'1 |  
}

bass = \new Voice \relative c { \clef bass
    r1 | r1 | r1 | r2 g~ | 
    g g8 d' c d | r2 g,8 d' c d | r2 g,8 d' c d | af1 |  
}

theChords = \chordmode {
  \key f \minor
  \tempo 4=120
    % intro
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | af1:7.11+.13 |
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
    ef1:maj7/f | \time 2/4  af2:7.11+.13 |

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

}

\score {
  <<
    \new Staff \with { instrumentName = "Trumpet" } \trumpet
    \new Staff \with { instrumentName = "Tenor sax" } \tenor
    \new Staff \with { instrumentName = "Keys" } \keys
    \new Staff \with { instrumentName = "Guitar 1" } \guitarOne
    \new Staff \with { instrumentName = "Guitar 2" } \guitarTwo
    \new Staff \with { instrumentName = "Bass" } \bass
    \new ChordNames \theChords
    \new Staff  \leadSheet
  >>
  \layout {
  }
}
\score {
  <<
    \new ChordNames \theChords
    \new Staff \with {midiInstrument= "trumpet" } \trumpet
    \new Staff \with {midiInstrument= "tenor sax" } \tenor
    \new Staff \with {midiInstrument = "electric piano 1"} \keys
    \new Staff \with {midiInstrument = "electric guitar (clean)"} \guitarOne
    \new Staff \with {midiInstrument = "electric guitar (clean)"} \guitarTwo
    \new Staff \with {midiInstrument = "electric bass (finger)"} \bass
  >>
  \midi {
  }
}
