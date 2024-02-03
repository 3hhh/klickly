\include "common/header.ly"

myMusic = {
    \tuplet 3/2 {\accP8 r8 \reg8}
    \repeat unfold 3 { \tuplet 3/2 { \accS8 r8 \reg8 } }
    }

\include "common/footer.ly"
