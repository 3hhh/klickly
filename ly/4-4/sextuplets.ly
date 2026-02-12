\include "common/header.ly"

myMusic = {
    \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
    \repeat unfold 3 {
        \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
    }
}

\include "common/footer.ly"
