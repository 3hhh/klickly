\include "common/header.ly"

%for how many bars to stick to one pattern:
the_loop_times=1

myMusic = {
    \repeat unfold \the_loop_times { \accP8 \repeat unfold 3 { \reg8 \accS8 } \reg8 } %8th
    \repeat unfold \the_loop_times { %32th
        \accP32 \repeat unfold 7 { \reg32 }
        \repeat unfold 3 { 
            \accS32 \repeat unfold 7 { \reg32 }
        }
    }
}

\include "common/footer.ly"
