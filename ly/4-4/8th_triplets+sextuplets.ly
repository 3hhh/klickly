\include "common/header.ly"

%for how many bars to stick to one pattern:
the_loop_times=1

myMusic = {
    \repeat unfold \the_loop_times {
        \tuplet 3/2 {\accP8 \reg8 \reg8}
        \repeat unfold 3 { \tuplet 3/2 { \accS8 \reg8 \reg8 } }
    }
    \repeat unfold \the_loop_times {
        \tuplet 6/4 {\accP16 \repeat unfold 5 { \reg16 } }
        \repeat unfold 3 {
            \tuplet 6/4 {\accS16 \repeat unfold 5 { \reg16 } }
        }
    }
}

\include "common/footer.ly"
