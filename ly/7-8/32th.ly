\include "common/header.ly"

myTime = \time 7/8

myMusic = {
   \accP32 \repeat unfold 7 { \reg32 }
    \repeat unfold 2 {
        \accS32 \repeat unfold 7 { \reg32 }
    }
    \repeat unfold 4 { \reg32 }
}

\include "common/footer.ly"
