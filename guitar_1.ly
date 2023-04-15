\include "general.ly"
guitarOne = \new Voice \relative c'' {
  \key g \minor
    g8 f g r g16 f d c r4 | g'8 d f fs g r g f | 
    g r g16 f d c r4 g'8 d | f fs g r 
    g8 f g r | g16 f d c r4 g'8 d f fs | g r g f  
    g r g16 f d c | r4 g'8 d f fs g r | 

    \slash \stems
    \repeat unfold 16 {g16}  
}

