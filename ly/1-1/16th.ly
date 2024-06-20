\include "common/header.ly"

myTime = \time 1/1

myMusic = {
    \repeat unfold 4 {
         \accS16 \repeat unfold 3 { \reg16 }
    }
}

\include "common/footer.ly"
