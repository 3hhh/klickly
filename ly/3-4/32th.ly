\include "common/header.ly"

myTime = \time 3/4

myMusic = {
    \accP32 \repeat unfold 7 { \reg32 }
    \repeat unfold 2 {
        \accS32 \repeat unfold 7 { \reg32 }
    }
}

\include "common/footer.ly"
