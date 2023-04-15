% TODO
% double bar lines at sections
% individuele partijen afmaken (veel rusten)
% individuele partijen printen
% iedere sectie van lead sheet in variabele, zodat ik ze makkelijk in andere partijen kan zetten

% vragen voor Wouter
% maat 62, duidelijk, of kan beter genoteerd? accenten?
% hits blazers in drum/leadsheet?

\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"
\include "general.ly"
\include "trumpet.ly"
\include "tenor.ly"
\include "keys.ly"
\include "bass.ly"
\include "guitar_1.ly"
\include "guitar_2.ly"
\include "lead_sheet.ly"

% Full score
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
