% TODO
% double bar lines at sections
% individuele partijen afmaken (veel rusten)
% individuele partijen printen
% iedere sectie van lead sheet in variabele, zodat ik ze makkelijk in andere partijen kan zetten

% vragen voor Wouter
% maat 62, duidelijk, of kan beter genoteerd? accenten?
% hits blazers in drum/leadsheet?

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

trumpet = \new Voice \relative c'' {
  \key g \minor

% intro
    r1 | r1 | r1 | r1 |
    r1 | r1 | r1 |  c2 d4 bf' | 
    g4\bendAfter #-4 r r2 | r1 | r1 | r2 r8 g f16 g r8 |

% verse 1
    R1*8 |
    r2 g,8 a bf c~ | c2 g8 a bf df~ | df2 g,8 a bf d~ | d4. ef16 d c2 |
    r1 | r2 g'8 f d d\bendAfter #-4 | R1*2 |

% verse 2
    R1*8 |
    r2 g,8 a bf c~ | c2 g8 a bf df~ | df2 g,8 a bf d~ | d4. ef16 d c2 |
    r1 | r2 g'8 d f16 f fs g | r8 a\bendAfter #-4 r4 r2 | R1 |

% bridge
    f8.-> f16 r4 r2 | r2 r16 bf,16 g8-. bf8-. c-. | 
    f8.-> f16 r4 r2 |  r8 df8~->\<\sf df4~ df4\! r4 |  
    f8.-> f16 r4 r2 | r2 r16 bf,16 g8-. bf8-. c-. | 
    f8.-> f16 r4 r2 | f2. f4 | e2 d4 bf' |  
    g4\bendAfter #-4 r r2 | R1 | R1 | R1 |
    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r8 f,8-. r16 f8-. r16 f4-> \tuplet 3/2 {f8 gf8 g8} | \time 2/4 af2-> | 

% guitar solo + verse 3
    \time 4/4
    R1*3 | r2 r4 r8. g16-> | R1*4 |
    r2 g,8 a bf c~ | c2 g8 a bf df~ | df2 g,8 a bf d~ | d4. ef16 d c2 |
    r1 | r2 g'8 d f16 f fs g | r8 a\bendAfter #-4 r4 r2 | R1 |

% bridge 2
    f8.-> f16 r4 r2 | r2 r16 bf,16 g8-. bf8-. c-. | 
    f8.-> f16 r4 r2 |  r8 df8~->\<\sf df4~ df4\! r4 |  
    f8.-> f16 r4 r2 | r2 r16 bf,16 g8-. bf8-. c-. | 
    f8.-> f16 r4 r2 | f2. f4 | e2 d4 bf' |  

% verse 4
    g4\bendAfter #-4 r r2 | R1 | R1 | R1 |
    R1*4 |
    r2 g,8 a bf c~ | c2 g8 a bf df~ | df2 g,8 a bf d~ | d4. ef16 d c2 |

% final chorus thing
   r4 bf8-. c-. d16 d r8 r4 | r4 bf8-. c-. d-. f16 f r4 |
   r4 bf,8-. c-. d-. f-. g16 g r8 | R1 |
   r4 bf,8-. c-. d16 d r8 r4 | r4 bf8-. c-. d-. f16 f r4 |
   r4 bf,8-. c-. d-. f-. g16 g r8 | R1 |

% fade out
    R1*8 |
    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r8 f,8-. r16 f8-. r16 f4-> \tuplet 3/2 {f8 gf8 g8} | af2-> r8 g8-> r4 \fine 

}

tenor = \new Voice \relative c' {
  \key g \minor
    r1 | r1 | r1 | r1 |
    r1 | r1 | r1 |  c2 d4 bf' | 
    g4\bendAfter #-4 r r2 | r1 | r1 | r2 r8 g f16 g r8 |

% verse 1
    R1*8 |
    r2 g4. f8~ | f2 f4. e8~ | e2 e8 f g4~ | g2 gf2 |
    r1 | r2 bf8 g f g\bendAfter #-4 | R1*2 |

% verse 2
    R1*8 |
    r2 g4. f8~ | f2 f4. e8~ | e2 e8 f g4~ | g2 gf2 |
    r1 | r2 bf8 g f16 f fs g | r8 a\bendAfter #-4 r4 r2 | R1 |

% bridge

    f8.-> f16 r4 r2 | r2 r16 bf16 g8-. bf8-. c-. | 
    ef,8.-> ef16 r4 r2 |  r8 g8~->\<\sf g4~ g4\! r4 |  
    f8.-> f16 r4 r2 | r2 r16 bf16 g8-. bf8-. c-. | 
    ef,8.-> ef16 r4 r2 | f2. f4 | e2 d4 bf' | 
    g4\bendAfter #-4 r r2 | R1 | R1 | R1 |

    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r8 f,8-. r16 f8-. r16 f4-> \tuplet 3/2 {f8 gf8 g8} | \time 2/4 af2-> | 

% guitar solo + verse 3
    \time 4/4
    R1*3 | r2 r4 r8. bf16-> | R1*4 |
    r2 g4. f8~ | f2 f4. e8~ | e2 e8 f g4~ | g2 gf2 |
    r1 | r2 bf8 g f16 f fs g | r8 a\bendAfter #-4 r4 r2 | R1 |

% bridge 2
    f8.-> f16 r4 r2 | r2 r16 bf16 g8-. bf8-. c-. | 
    ef,8.-> ef16 r4 r2 |  r8 g8~->\<\sf g4~ g4\! r4 |  
    f8.-> f16 r4 r2 | r2 r16 bf16 g8-. bf8-. c-. | 
    ef,8.-> ef16 r4 r2 | f2. f4 | e2 d4 bf' | 

% verse 4
    g4\bendAfter #-4 r r2 | R1 | R1 | R1 |
    R1*4 |
    r2 g4. f8~ | f2 f4. e8~ | e2 e8 f g4~ | g2 gf2 |

% final chorus thing
   r4 bf,8-. c-. d16 d r8 r4 | r4 bf8-. c-. d-. f16 f r4 |
   r4 bf,8-. c-. d-. f-. g16 g r8 | R1 |
   r4 bf,8-. c-. d16 d r8 r4 | r4 bf8-. c-. d-. f16 f r4 |
   r4 bf,8-. c-. d-. f-. g16 g r8 | R1 |

% fade out
    R1*8 |
    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r2 r4 r8 bf8-> |r2 r4 r8 c8-> |r2 r4 r8 c-> |r2 r4 r8 df8-> |
    r8 f,8-. r16 f8-. r16 f4-> \tuplet 3/2 {f8 gf8 g8} | af2-> r8 g8-> r4 \fine | 

}

keys = \new Voice \relative c''' {
  \key g \minor
    <c d f>4 <c d f> <bf c ef> <bf c ef> | <a bf d> <a bf d> <g a c> <g a c> |
    <f g bf> <f g bf> <e f a> <e f a> | <d e g> <d e g>
    <c d f>4 <c d f> | <bf c ef> <bf c ef>  <a bf d> <a bf d> | <g a c> <g a c> 
    <f g bf> <f g bf> | <e f a> <e f a> <d e g> <d e g> | 

    \slash \stems 
    af1 |

}

guitarOne = \new Voice \relative c'' {
  \key g \minor
    g8 f g r g16 f d c r4 | g'8 d f fs g r g f | 
    g r g16 f d c r4 g'8 d | f fs g r 
    g8 f g r | g16 f d c r4 g'8 d f fs | g r g f  
    g r g16 f d c | r4 g'8 d f fs g r | 

    \slash \stems
    \repeat unfold 16 {g16}  
}

guitarTwo = \new Voice \relative c'' {
  \key g \minor
    r1 | r1 | r1 | r2 g~ | 
    g g8 d c d | r2 g8 d c d | r2 g8 d c d | af'1 |  
}

bass = \new Voice \relative c { \clef bass
  \key g \minor
    r1 | r1 | r1 | r2 g~ | 
    g g'8 d c d | r2 g8 d c d | r2 g8 d c d | af1 |  
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
