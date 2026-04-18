\include "common/header.ly"

%for how many bars to stick to one pattern:
#(set-default! 'loops 1)

myMusic = {
    \repeat unfold \loops { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \loops { %32th
        \accP32 \repeat unfold 7 { \reg32 }
        \repeat unfold 3 {
            \accS32 \repeat unfold 7 { \reg32 }
        }
    }
}

\include "common/footer.ly"
