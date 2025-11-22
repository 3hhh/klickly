\include "common/header.ly"

myMusic = {
    \accP32 \repeat unfold 7 { \reg32 }
    \repeat unfold 3 { 
        \accS32 \repeat unfold 7 { \reg32 }
    }
}

\include "common/footer.ly"
