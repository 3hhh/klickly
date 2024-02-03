global = {
  \key c \major
  \myTime
  \tempo \myTempoBase = \myTempo
}

drum = {
  \global
  \stemUp \slurUp \dynamicUp \textSpannerUp \tupletUp \dotsUp %set most directions upwards
  \numericTimeSignature
  \myMusic
}

\score {
  \new DrumStaff \with {
    \consists "Instrument_name_engraver"
    instrumentName = "Drums"
  } \drum
  \layout { }
}

% get the myMidiMusic definition
\include "midi.ly"

drumMidi = {
  \global
  \myMidiMusic
}

% separate for midi to unfold the repeats
% https://lilypond.org/doc/v2.21/Documentation/notation/using-repeats-with-midi
\score {
  \unfoldRepeats {
    \new Staff {
      \set Staff.midiInstrument = \myInstrument
      } \drumMidi
  }
  \midi {}
}
