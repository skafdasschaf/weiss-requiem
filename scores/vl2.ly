\version "2.22.0"

\include "../definitions.ly"

\paper {
  indent = 1\cm
  top-margin = 1.5\cm
  system-separator-markup = ##f
  system-system-spacing =
    #'((basic-distance . 18)
       (minimum-distance . 18)
       (padding . -100)
       (stretchability . 0))

  top-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

  top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -100)
       (stretchability . 0))

  markup-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

  systems-per-page = #9
}

#(set-global-staff-size 17.82)

\layout {
  \context {
    \Staff
    instrumentName = "vl 2"
  }
}

\book {
  \bookpart {
    \header {
      number = "1"
      title = "I N T R O I T U S   –   K Y R I E"
    }
    \paper { indent = 2\cm }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = "Violino II"
          \RequiemViolinoII
        }
      >>
    }
  }
  \bookpart {
    \header {
      number = "2"
      title = "S E Q U E N T I A"
    }
    \score {
      <<
        \new Staff { \DiesIraeViolinoII }
      >>
    }
  }
  \bookpart {
    \header {
      number = "3"
      title = "O F F E R T O R I U M"
    }
    \score {
      <<
        \new Staff { \DomineViolinoII }
      >>
    }
  }
  \bookpart {
    \header {
      number = "4"
      title = "S A N C T U S"
    }
    \paper { systems-per-page = #6 }
    \score {
      <<
        \new Staff { \SanctusViolinoII }
      >>
    }
  }
  \bookpart {
    \header {
      number = "5"
      title = "B E N E D I C T U S"
    }
    \score {
      <<
        \new Staff { \BenedictusViolinoII }
      >>
    }
  }
  \bookpart {
    \header {
      number = "6"
      title = "A G N U S   D E I"
    }
    \score {
      <<
        \new Staff { \AgnusDeiViolinoII }
      >>
    }
  }
  \bookpart {
    \header {
      number = "7"
      title = "C U M   S A N C T I S   T U I S"
    }
    \paper { systems-per-page = #6 }
    \score {
      <<
        \new Staff { \CumSanctisViolinoII }
      >>
    }
  }
}