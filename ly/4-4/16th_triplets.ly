\include "common/header.ly"

myMusic = {
    \tuplet 3/2 {\accP16 \reg16 \reg16}
    \repeat unfold 7 { \tuplet 3/2 { \accS16 \reg16 \reg16 } }
    }

\include "common/footer.ly"
