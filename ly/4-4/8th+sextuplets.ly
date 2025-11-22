\include "common/header.ly"

%for how many bars to stick to one pattern:
the_loop_times=1

myMusic = {
    \repeat unfold \the_loop_times { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \the_loop_times { %sextuplets
        \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
        \repeat unfold 3 {
            \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
            }
    }
}

\include "common/footer.ly"
