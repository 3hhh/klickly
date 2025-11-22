\include "common/header.ly"

myTime = \time 1/1

myMusic = {
    \repeat unfold 4 {
         \accS32 \repeat unfold 7 { \reg32 }
    }
}

\include "common/footer.ly"
