\include "common/header.ly"

myTime = \time 7/8

myMusic = {
    \accP16 \repeat unfold 3 { \reg16 }
    \repeat unfold 2 {
        \accS16 \repeat unfold 3 { \reg16 }
    }
    \repeat unfold 2 { \reg16 }
}

\include "common/footer.ly"
