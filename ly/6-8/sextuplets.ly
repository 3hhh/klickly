\include "common/header.ly"

myTime = \time 6/8

myMusic = {
    \tuplet 3/2 { \accP16 \reg16 \reg16 }
    \repeat unfold 2 {
        \tuplet 3/2 { \repeat unfold 3 \reg16 }
    }
    \tuplet 3/2 { \accS16 \reg16 \reg16 }
    \repeat unfold 2 {
        \tuplet 3/2 { \repeat unfold 3 \reg16 }
    }
}

\include "common/footer.ly"
