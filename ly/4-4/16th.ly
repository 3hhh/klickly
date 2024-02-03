\include "common/header.ly"

myMusic = {
    \accP16 \repeat unfold 3 { \reg16 }
    \repeat unfold 3 { 
        \accS16 \repeat unfold 3 { \reg16 }
    }
}

\include "common/footer.ly"
