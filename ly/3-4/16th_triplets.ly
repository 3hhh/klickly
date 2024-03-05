\include "common/header.ly"

myTime = \time 3/4

myMusic = {
    \tuplet 3/2 {\accP16 \reg16 \reg16}
    \repeat unfold 5 { \tuplet 3/2 { \accS16 \reg16 \reg16 } }
    }

\include "common/footer.ly"
