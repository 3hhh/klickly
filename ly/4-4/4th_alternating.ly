\include "common/header.ly"

%one bar 4th on the beat, one bar 4th in the off-beat (second 8th)

myMusic = {
    \accP4 \repeat unfold 3 { \reg4 }
    r8 \accS8 \repeat unfold 3 { r8 \reg8 }
}

\include "common/footer.ly"
