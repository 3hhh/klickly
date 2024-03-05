\include "common/header.ly"

myTime = \time 3/4

myMusic = {
    \tuplet 3/2 {\accP8 \reg8 \reg8}
    \repeat unfold 2 { \tuplet 3/2 { \accS8 \reg8 \reg8 } }
    }

\include "common/footer.ly"
