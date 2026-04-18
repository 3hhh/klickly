\include "common/header.ly"

%also called "the loop"

%for how many bars to stick to one pattern:
#(set-default! 'loops 1)

myMusic = {
    \repeat unfold \loops { %16th
            \accP16 \repeat unfold 3 { \reg16 }
            \repeat unfold 3 { \accS16 \repeat unfold 3 { \reg16 } }
        }
    \repeat unfold \loops { %sextoles
        \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
        \repeat unfold 3 {
            \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
        }
    }
    \repeat unfold \loops { %32th
        \accP32 \repeat unfold 7 { \reg32 }
        \repeat unfold 3 {
            \accS32 \repeat unfold 7 { \reg32 }
        }
    }
}

\include "common/footer.ly"
