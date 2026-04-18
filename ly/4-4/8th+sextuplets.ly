\include "common/header.ly"

%for how many bars to stick to one pattern:
#(set-default! 'loops 1)

myMusic = {
    \repeat unfold \loops { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \loops { %sextuplets
        \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
        \repeat unfold 3 {
            \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
            }
    }
}

\include "common/footer.ly"
