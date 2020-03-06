\version "2.19.65"

\book {



\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Jan 28"
        \line { "#101" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 2/2
      {
        c2. e4 c1
        \bar "|."
      }
    }
  >>
  \layout { }
  \midi { }
}


\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Jan 29"
        \line { "#102" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 4/4
      \repeat volta 2
      {
        e2~ \mark "Solemnly" e4. f8
        e1
      }
    }
    \new Staff = "lower" \relative c {
      \clef bass
      \key g \major
      \numericTimeSignature
      \time 4/4
      \repeat volta 2
      {
        <e g b>2~<e g b>4. <e a c>8
        <e g b>2~<e g b>4 <f a c>4
      }
    }
  >>
  \layout { }
  \midi { }
}


\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Jan 30"
        \line { "#103" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 4/4
      {
        e4 fis e g,
        r1
        \bar "|."
      }
    }
    \new Staff = "lower" \relative c {
      \clef bass
      \key g \major
      \numericTimeSignature
      \time 4/4
      {
        r1
        <e, b' e>1 \fermata
      }
    }
  >>
  \layout { }
  \midi { }
}


\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Feb 5"
        \line { "#104" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key des \major
      \numericTimeSignature
      \time 4/4
      {
        aes'4 f aes f
        ees2. ees4
        des1 \fermata
        \bar "|."
      }
    }
    \new Staff = "lower" \relative c {
      \clef bass
      \key des \major
      \numericTimeSignature
      \time 4/4
      {
        <des f aes>2 <des f aes>2
        <c ges' aes>2. <c ges' aes>4
        <des f aes>1
        \fermata
      }
    }
  >>
  \layout { }
  \midi { }
}


\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Feb 6"
        \line { "#105" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      {
        \partial 2.
        r4 c d
        e2 f4 e
        d1
        c1~
        c2.
        \bar "|."
      }
    }
    \new Staff = "lower" \relative c {
      \clef bass
      \key c \major
      \numericTimeSignature
      \time 4/4
      {
        \partial 2.
        b'4 r2
        <c, e g>1
        <b f' g>1
        <c e g>1~
        <c e g>2.
      }
    }
  >>
  \layout { }
  \midi { }
}


\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column { "Feb 8"
        \line { "#106" }
      }
    }
  }
  <<
    \new Staff = "upper" \relative c' {
      \clef treble
      \key b \major
      \numericTimeSignature
      \time 2/4
      {
        b4 cis
        dis4 b
        e4 dis
        cis4 b
        b2~
        b2~
        b2~
        b2
        \bar "|."
      }
    }
    \new Staff = "lower" \relative c {
      \clef bass
      \key b \major
      \numericTimeSignature
      \time 2/4
      {
        b2
        fis'2
        gis2
        fis2
        b,2~
        b2~
        b2~
        b2
      }
    }
  >>
  \layout { }
  \midi { }
}




}
