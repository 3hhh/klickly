\include "common/header.ly"

%also called "the loop"

%for how many bars to stick to one pattern:
#(set-default! 'loops 1)

myMusic = {
    \repeat unfold \loops { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \loops { %8th triplets
        \tuplet 3/2 {\accP8 \reg8 \reg8}
        \repeat unfold 3 { \tuplet 3/2 { \accS8 \reg8 \reg8 } }
    }
    \repeat unfold \loops { %16th
        \accP16 \repeat unfold 3 { \reg16 }
        \repeat unfold 3 {
            \accS16 \repeat unfold 3 { \reg16 }
        }
    }
}

\include "common/footer.ly"
