\version "2.24.0"

\header {
  title = "Where the Light Fades"
  composer = "Gebom Lomi"
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Reflective" 4 = 72
}

violin = \relative c'' {
  \global
  \dynamicUp

  \mark \markup { \box "A" }
  \p

  d4( f a2) |
  a4( f d c) |
  c2( a4 g) |
  g4( e d2) |

  g4( bes d2) |
  f4( e d2) |
  cis4( e g2) |
  a4( f e d) |

  \mark \markup { \box "B" }
  \mp

  g4( bes a g) |
  f2( d4 f) |
  e4( g bes2) |
  a4( gis e2) |

  f4( a d2) |
  a4( f d c) |
  cis4( e g bes) |
  a2( f4 d) |

  \mark \markup { \box "A'" }
  \mf

  d4( f a2) |
  a4( f d c) |
  c2( a4 g) |
  g4( e d2) |

  g4( bes d2) |
  f4( e d2) |
  cis4( e g2) |
  a4( f e d) |

  \mark \markup { \box "Coda" }
  \mp

  g4( bes a g) |
  f2( d4 f) |
  e4( g c2) |
  cis4( e g2) |

  a4( f d2) |
  f4( d c2) |
  cis4( e g2) |
  a2( f4 d) \fermata |
}

viola = \relative c' {
  \global

  a1 |
  f1 |
  f2 e4 c |
  g'1 |

  bes1 |
  a1 |
  g2 e |
  f1 |

  bes1 |
  bes1 |
  g1 |
  e1 |

  a1 |
  f1 |
  g1 |
  f1 |

  a1 |
  f1 |
  f2 e4 c |
  g'1 |

  bes1 |
  a1 |
  g2 e |
  f1 |

  bes1 |
  bes1 |
  g1 |
  e1 |

  a1 |
  f1 |
  g1 |
  f1 \fermata |
}

cello = \relative c {
  \global
  \p

  d1 |
  bes1 |
  f1 |
  c1 |

  g1 |
  d1 |
  a1 |
  d1 |

  g1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  a1 |
  d1 |

  d1 |
  bes1 |
  f1 |
  c1 |

  g1 |
  d1 |
  a1 |
  d1 |

  g1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  a1 |
  d1 \fermata |
}

pianoRight = \relative c' {
  \global
  \pp

  <d f a>1 |
  <bes d f a>1 |
  <f a c>1 |
  <c e g>1 |

  <g bes d>1 |
  <a d fis>1 |
  <a cis e g>1 |
  <d f a>1 |

  <g bes d>1 |
  <bes d f>1 |
  <c e g>1 |
  <cis e g>1 |

  <d f a>1 |
  <bes d f>1 |
  <cis e g bes>1 |
  <d f a>1 |

  <d f a>1 |
  <bes d f a>1 |
  <f a c>1 |
  <c e g>1 |

  <g bes d>1 |
  <a d fis>1 |
  <a cis e g>1 |
  <d f a>1 |

  <g bes d>1 |
  <bes d f>1 |
  <c e g>1 |
  <cis e g>1 |

  <d f a>1 |
  <bes d f a>1 |
  <cis e g bes>1 |
  <d f a>1 \fermata |
}

pianoLeft = \relative c'' {
  \global
  \pp

  d1 |
  bes1 |
  f1 |
  c1 |

  g1 |
  d1 |
  a1 |
  d1 |

  g1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  a1 |
  d1 |

  d1 |
  bes1 |
  f1 |
  c1 |

  g1 |
  d1 |
  a1 |
  d1 |

  g1 |
  bes1 |
  c1 |
  a1 |

  d1 |
  bes1 |
  a1 |
  d1 \fermata |
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Violin"
      shortInstrumentName = "Vln."
    } {
      \clef treble
      \violin
    }

    \new Staff \with {
      instrumentName = "Viola"
      shortInstrumentName = "Vla."
    } {
      \clef alto
      \viola
    }

    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Vc."
    } {
      \clef bass
      \cello
    }

    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
    } <<
      \new Staff {
        \clef treble
        \pianoRight
      }

      \new Staff {
        \clef bass
        \pianoLeft
      }
    >>
  >>

  \layout { }
  \midi { }
}


