\include "common/header.ly"

%for how many bars to stick to one pattern:
the_loop_times=1

myMusic = {
    \repeat unfold \the_loop_times { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \the_loop_times { %8th triplets
        \tuplet 3/2 {\accP8 \reg8 \reg8}
        \repeat unfold 3 { \tuplet 3/2 { \accS8 \reg8 \reg8 } }
    }
}

\include "common/footer.ly"
