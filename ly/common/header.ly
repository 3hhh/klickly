% available variables (incl. defaults for manual compilation):
%myMusic = {your music here}
%myMidiMusic - generated by klickly
myTime = \time 4/4
myTempo = 80
myTempoBase = ##{ 4 #} %the cryptic syntax converts it to a duration
myTempoIncrease = 0
myTempoDuration = 0
myTempoEnd = 0
myInstrument = "honky-tonk"
myAccP = c'''' %primary accented note to use
myAccS = c'''  %secondary accented note to use
myReg = c''    %regular note to use
myRepeats = 10

%convenience functions to use myAccP/myAccS/myReg
% -! for staccatissomo (has little effect though)
accP = #(define-music-function (d) (ly:duration?)
   #{
     \myAccP $d -!
   #})

accS = #(define-music-function (d) (ly:duration?)
   #{
     \myAccS $d -!
   #})

reg = #(define-music-function (d) (ly:duration?)
   #{
     \myReg $d -!
   #})

\include "vars.ly"