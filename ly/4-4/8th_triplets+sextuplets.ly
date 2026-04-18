\include "common/header.ly"

%for how many bars to stick to one pattern:
#(set-default! 'loops 1)

myMusic = {
    \repeat unfold \loops {
        \tuplet 3/2 {\accP8 \reg8 \reg8}
        \repeat unfold 3 { \tuplet 3/2 { \accS8 \reg8 \reg8 } }
    }
    \repeat unfold \loops {
        \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
        \repeat unfold 3 {
            \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
        }
    }
}

\include "common/footer.ly"
