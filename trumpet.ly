\include "general.ly"

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
