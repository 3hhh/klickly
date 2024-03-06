\include "common/header.ly"

myTime = \time 3/4

myMusic = {
    \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
    \repeat unfold 2 {
        \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
        }
    }

\include "common/footer.ly"
