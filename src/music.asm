; Clinkster music converted from fizzer1.9.xrns 2015-06-20 21:47:42

%define USES_SINE 1
%define USES_SAWTOOTH 0
%define USES_SQUARE 0
%define USES_PARABOLA 1
%define USES_TRIANGLE 1
%define USES_NOISE 1
%define USES_VELOCITY 1
%define USES_LONG_NOTES 0
%define USES_DELAY 1
%define USES_PANNING 0
%define USES_INDEXDECAY 1
%define USES_GAIN 1

%define SUBSAMPLES_PER_TICK 15656
%define MAX_INSTRUMENT_SUBSAMPLES 1048576
%define MAX_TOTAL_INSTRUMENT_SAMPLES 1703936
%define MAX_RELEASE_SUBSAMPLES 262144
%define TOTAL_SAMPLES 7274496
%define MAX_TRACK_INSTRUMENT_RENDERS 23

%define MAX_DELAY_LENGTH 39142
%define LEFT_DELAY_LENGTH 23485
%define RIGHT_DELAY_LENGTH 39142
%define DELAY_STRENGTH 0.44000091

%define NUMTRACKS 17
%define LOGNUMTICKS 11
%define MUSIC_LENGTH 1840
%define TICKS_PER_SECOND 11.26666667


	section instdata data align=1

_InstrumentData:
	; 00:  percussion echo / 10|hihatlow copy
	db	0,2,13,32,0,5,3,37,2,9,55,22,0,0,0,-44,-120,-24,-120
	db	67,127,1,0,-1
	; 01:  percussion echo / 0F|clap1
	db	2,3,22,26,17,14,13,0,-2,3,7,-89,-74,32,52,8,-46,-9,-1
	db	93,127,1,0,9,127,1,0,-1
	; 02:  percussion echo / 11|hihat copy
	db	0,0,13,23,0,5,4,37,2,5,55,22,-12,0,0,-36,-59,-6,-19
	db	67,127,1,0,-1
	; 03:  percussion echo / 02|thinsnare
	db	2,2,49,25,0,36,12,56,-8,25,24,24,0,0,0,-16,-91,-11,11
	db	110,127,1,0,-1
	; 04:  percussion echo / 11|hihat copy
	db	0,0,13,23,0,5,4,37,2,5,55,22,-12,0,0,-36,-59,-6,-19
	db	67,127,1,0,-1
	; 05:  intro melo 2 + main strings / 0D|string
	db	1,1,5,5,71,50,5,0,17,14,0,-24,0,0,-104,13,10,-6,3
	db	42,48,48,0,13,127,24,0,2,127,16,0,4,127,16,0,-1
	; 06:  intro melo 2 + main strings / 0D|string
	db	1,1,5,5,71,50,5,0,17,14,0,-24,0,0,-104,13,10,-6,3
	db	63,127,16,0,0,48,24,0,1,48,32,48,24,127,16,0,4,48,8,0,-1
	; 07:  intro melo 2 + main strings / 0D|string
	db	1,1,5,5,71,50,5,0,17,14,0,-24,0,0,-104,13,10,-6,3
	db	52,127,24,0,1,127,32,127,24,0,4,127,8,0,-1
	; 08:  intro melo 3 + main melo / 0C|melo 2
	db	1,1,13,78,8,9,1,0,18,3,-57,12,-106,-6,-36,0,-36,10,4
	db	63,127,1,0,2,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,1,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,-1
	; 09:  intro melo 3 + main melo / 12|not used 2
	db	0,0,5,5,5,5,5,5,12,15,0,0,0,0,0,0,-32,0,12
	db	63,127,1,0,2,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,1,127,1,0,1,127,1,0,1,127,1,0,0,127,1,0,-1
	; 10:  intro melo 3 + main melo / 06|melo 3
	db	2,0,5,4,16,0,9,16,15,8,0,0,0,0,-36,53,-107,-6,19
	db	28,127,2,0,1,127,2,0,1,127,2,0,2,127,2,0,6,127,6,0,4,127,6,0,4,127,10,127,6,0,3,127,6,0,1,127,2,0,0,127,10,127,4,0,1,127,12,127,8,127,4,0,1,127,8,127,4,0,0,127,6,0,1,127,4,0,1,127,6,127,4,0,1,127,4,0,0,127,4,0,-1
	; 11:  intro melo 1 / 0E|intro string
	db	1,1,8,26,0,0,5,10,23,7,-10,120,-48,0,-40,-2,12,0,-6
	db	75,127,24,0,2,127,16,0,1,127,24,127,16,0,2,127,16,0,1,127,16,0,-1
	db	-1
	; 12:  kick / 00|basicbassdrum
	db	0,2,0,0,0,6,1,0,-22,29,33,31,-56,-128,-80,17,-120,-90,-15
	db	19,127,4,127,3,127,2,0,-1
	; 13:  percussion / 09|hihat
	db	0,0,13,23,0,5,9,37,2,26,55,22,-12,0,0,-36,-105,-6,-25
	db	67,127,1,0,-1
	; 14:  percussion / 05|clap1
	db	2,3,22,26,17,14,13,0,-2,36,7,-89,-74,32,52,8,-46,-9,-1
	db	59,127,1,0,-1
	; 15:  percussion / 0A|hihat low
	db	0,2,13,32,0,5,7,37,2,20,55,22,0,0,0,-26,-120,-24,-120
	db	67,127,1,0,-1
	; 16:  percussion / 09|hihat
	db	0,0,13,23,0,5,9,37,2,26,55,22,-12,0,0,-36,-105,-6,-25
	db	67,127,1,0,-1
	db	-1,-1

	section notepos data align=1

_NotePositions:
	; 00:  percussion echo / 10|hihatlow copy
	; position 1 - pattern 1
	db	52,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 2 - pattern 1
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 3 - pattern 2
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 4 - pattern 2
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 5 - pattern 3
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 6 - pattern 3
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 7 - pattern 3
	db	8,6,8,4,4,10,8,6,4,6,8,6,8,4,4,10,8,6,4,6
	; position 8 - pattern 4
	db	-1,128
	; position 9 - pattern 5
	db	6,2,6,12,4,8,10,6,4,6,6,2,6,12,4,8,10,6,4,6
	; position 10 - pattern 6
	db	6,2,6,12,4,8,10,6,4,6,6,2,6,12,4,8,10,6,4,6
	; position 11 - pattern 6
	db	6,2,6,12,4,8,10,6,4,6,6,2,6,12,4,8,10,6,4,6
	; position 12 - pattern 7
	db	6,2,6,12,4,8,10,6,4,6,6,2,6,12,4,8,10,6,4,6

	; 01:  percussion echo / 0F|clap1
	; position 1 - pattern 1
	db	56,6,10,16,16,16,6,10,16,16
	; position 2 - pattern 1
	db	16,6,10,16,16,16,6,10,16,16
	; position 3 - pattern 2
	db	16,6,10,16,16,16,6,10,16,16
	; position 4 - pattern 2
	db	16,6,10,16,16,16,6,10,16,16
	; position 5 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 6 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 7 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 9 - pattern 5
	db	-1,144,6,10,16,16,16,6,10,16,16
	; position 10 - pattern 6
	db	16,6,10,16,16,16,6,10,16,16
	; position 11 - pattern 6
	db	16,6,10,16,16,16,6,10,16,16
	; position 12 - pattern 7
	db	16,6,10,16,16,16,6,10,16,16

	; 02:  percussion echo / 11|hihat copy
	; position 1 - pattern 1
	db	78,64
	; position 2 - pattern 1
	db	64,64
	; position 3 - pattern 2
	db	64,64
	; position 4 - pattern 2
	db	64,64
	; position 5 - pattern 3
	db	64,64
	; position 6 - pattern 3
	db	64,64
	; position 7 - pattern 3
	db	64,64
	; position 9 - pattern 5
	db	-1,162,30,8,26,30,8
	; position 10 - pattern 6
	db	26,30,8,26,30,8
	; position 11 - pattern 6
	db	26,30,8,26,30,8
	; position 12 - pattern 7
	db	26,30,8,26,30,8

	; 03:  percussion echo / 02|thinsnare
	; position 1 - pattern 1
	db	94,6,58,6
	; position 2 - pattern 1
	db	58,6,58,6
	; position 3 - pattern 2
	db	58,6,58,6
	; position 4 - pattern 2
	db	58,6,58,6
	; position 5 - pattern 3
	db	58,6,58,6
	; position 6 - pattern 3
	db	58,6,58,6
	; position 7 - pattern 3
	db	58,6,58,6
	; position 9 - pattern 5
	db	-1,158,18,10,6,30,18,10,6
	; position 10 - pattern 6
	db	30,18,10,6,30,18,10,6
	; position 11 - pattern 6
	db	30,18,10,6,30,18,10,6
	; position 12 - pattern 7
	db	30,18,10,6,30,18,10,6

	; 04:  percussion echo / 11|hihat copy
	; position 1 - pattern 1
	db	88,64
	; position 2 - pattern 1
	db	64,64
	; position 3 - pattern 2
	db	64,64
	; position 4 - pattern 2
	db	64,64
	; position 5 - pattern 3
	db	64,64
	; position 6 - pattern 3
	db	64,64
	; position 7 - pattern 3
	db	64,64
	; position 9 - pattern 5
	db	-1,192,64
	; position 10 - pattern 6
	db	64,64
	; position 11 - pattern 6
	db	64,64
	; position 12 - pattern 7
	db	64,64

	; 05:  intro melo 2 + main strings / 0D|string
	; position 0 - pattern 0
	db	0
	; position 8 - pattern 4
	db	-4,176,32,32,32
	; position 9 - pattern 5
	db	32,32,32,32
	; position 10 - pattern 6
	db	32,32,32,32
	; position 11 - pattern 6
	db	32,32,32,32
	; position 12 - pattern 7
	db	32,32,32,32
	; position 13 - pattern 8
	db	32,32,32,32

	; 06:  intro melo 2 + main strings / 0D|string
	; position 5 - pattern 3
	db	-3,48,64,24,8
	; position 6 - pattern 3
	db	32,64,24,8
	; position 7 - pattern 3
	db	32,64,24,8
	; position 8 - pattern 4
	db	48,64
	; position 9 - pattern 5
	db	64,64
	; position 10 - pattern 6
	db	64,64
	; position 11 - pattern 6
	db	64,64
	; position 12 - pattern 7
	db	64,64
	; position 13 - pattern 8
	db	64,64

	; 07:  intro melo 2 + main strings / 0D|string
	; position 5 - pattern 3
	db	-3,48,32,32,24,8
	; position 6 - pattern 3
	db	32,32,32,24,8
	; position 7 - pattern 3
	db	32,32,32,24,8
	; position 8 - pattern 4
	db	32,32,32,32
	; position 9 - pattern 5
	db	32,32,32,32
	; position 10 - pattern 6
	db	32,32,32,32
	; position 11 - pattern 6
	db	32,32,32,32
	; position 12 - pattern 7
	db	32,32,32,32
	; position 13 - pattern 8
	db	32,32,32,32

	; 08:  intro melo 3 + main melo / 0C|melo 2
	; position 8 - pattern 4
	db	-4,184,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 9 - pattern 5
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 10 - pattern 6
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 11 - pattern 6
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 12 - pattern 7
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,6,2,4,8,4
	; position 13 - pattern 8
	db	24,6,2,8,16,2,2,6,6,16,8,2,6,6,2,4,8,4

	; 09:  intro melo 3 + main melo / 12|not used 2
	; position 8 - pattern 4
	db	-4,184,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 9 - pattern 5
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 10 - pattern 6
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 11 - pattern 6
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,8
	; position 12 - pattern 7
	db	40,6,2,8,16,2,2,6,6,16,8,2,6,6,2,4,8,4
	; position 13 - pattern 8
	db	24,6,2,8,16,2,2,6,6,16,8,2,6,6,2,4,8,4

	; 10:  intro melo 3 + main melo / 06|melo 3
	; position 1 - pattern 1
	db	48,2,6,4,4,2,14,2,30,2,6,4,4,2,14,2,6,4
	; position 2 - pattern 1
	db	20,2,6,4,4,2,14,2,30,2,6,4,4,2,14,2,6,4
	; position 3 - pattern 2
	db	20,2,6,4,4,2,14,2,30,2,6,4,4,2,14,2,6,4,8,4,2
	; position 4 - pattern 2
	db	6,2,6,4,4,2,14,2,30,2,6,4,4,2,14,2,6,4,8,4,2
	; position 5 - pattern 3
	db	6,2,6,4,4,2,6,8,2,30,2,6,4,4,2,6,8,2,6,4,8,4,2
	; position 6 - pattern 3
	db	6,2,6,4,4,2,6,8,2,30,2,6,4,4,2,6,8,2,6,4,8,4,2
	; position 7 - pattern 3
	db	6,2,6,4,4,2,6,8,2,30,2,6,4,4,2,6,8,2,6,4,8,4,2
	; position 8 - pattern 4
	db	6,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6
	; position 9 - pattern 5
	db	8,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6
	; position 10 - pattern 6
	db	8,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6
	; position 11 - pattern 6
	db	8,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6
	; position 12 - pattern 7
	db	8,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6
	; position 13 - pattern 8
	db	8,2,6,4,4,2,14,2,6,4,20,2,6,4,4,2,14,2,6,4,4,2,6

	; 11:  intro melo 1 / 0E|intro string
	; position 10 - pattern 6
	db	-5,176,16,16,32,16,16
	; position 11 - pattern 6
	db	32,16,16,32,16,16
	; position 12 - pattern 7
	db	32,16,16,32,16,16
	; position 13 - pattern 8
	db	32,16,16,32,16,16

	; 12:  kick / 00|basicbassdrum
	; position 1 - pattern 1
	db	48,28,4,6,22,4,28,4,6,22
	; position 2 - pattern 1
	db	4,28,4,6,22,4,28,4,6,22
	; position 3 - pattern 2
	db	4,28,4,6,22,4,28,4,6,22
	; position 4 - pattern 2
	db	4,28,4,6,22,4,28,4,6,22
	; position 5 - pattern 3
	db	4,28,4,6,22,4,28,4,6,22
	; position 6 - pattern 3
	db	4,28,4,6,22,4,28,4,6,22
	; position 7 - pattern 3
	db	4,28,4,6,22,4,28,4,6,22
	; position 8 - pattern 4
	db	4,124
	; position 9 - pattern 5
	db	4,28,4,6,22,4,28,4,6,22
	; position 10 - pattern 6
	db	4,28,4,6,22,4,28,4,6,22
	; position 11 - pattern 6
	db	4,28,4,6,22,4,28,4,6,22
	; position 12 - pattern 7
	db	4,28,4,6,22,4,28,4,6,22
	; position 13 - pattern 8
	db	4

	; 13:  percussion / 09|hihat
	; position 1 - pattern 1
	db	52,14,12,6,16,16,14,12,6,16
	; position 2 - pattern 1
	db	16,14,12,6,16,16,14,12,6,16
	; position 3 - pattern 2
	db	16,14,12,6,16,16,14,12,6,16
	; position 4 - pattern 2
	db	16,14,12,6,16,16,14,12,6,16
	; position 5 - pattern 3
	db	16,14,12,6,16,16,14,12,6,16
	; position 6 - pattern 3
	db	16,14,12,6,16,16,14,12,6,16
	; position 7 - pattern 3
	db	16,14,12,6,16,16,14,12,6,16
	; position 9 - pattern 5
	db	-1,140,30,8,14,12,30,8,14
	; position 10 - pattern 6
	db	12,30,8,14,12,30,8,14
	; position 11 - pattern 6
	db	12,30,8,14,12,30,8,14
	; position 12 - pattern 7
	db	12,30,8,14,12,30,8,14

	; 14:  percussion / 05|clap1
	; position 1 - pattern 1
	db	56,6,10,16,16,16,6,10,16,16
	; position 2 - pattern 1
	db	16,6,10,16,16,16,6,10,16,16
	; position 3 - pattern 2
	db	16,6,10,16,16,16,6,10,16,16
	; position 4 - pattern 2
	db	16,6,10,16,16,16,6,10,16,16
	; position 5 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 6 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 7 - pattern 3
	db	16,6,10,16,16,16,6,10,16,16
	; position 9 - pattern 5
	db	-1,144,6,10,16,16,16,6,10,16,16
	; position 10 - pattern 6
	db	16,6,10,16,16,16,6,10,16,16
	; position 11 - pattern 6
	db	16,6,10,16,16,16,6,10,16,16
	; position 12 - pattern 7
	db	16,6,10,16,16,16,6,10,16,16

	; 15:  percussion / 0A|hihat low
	; position 1 - pattern 1
	db	58,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 2 - pattern 1
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 3 - pattern 2
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 4 - pattern 2
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 5 - pattern 3
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 6 - pattern 3
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 7 - pattern 3
	db	14,12,4,18,2,4,4,6,14,12,4,18,2,4,4,6
	; position 8 - pattern 4
	db	-1,128
	; position 9 - pattern 5
	db	6,2,6,8,4,4,8,2,8,2,4,4,6,6,2,6,8,4,4,8,2,8,2,4,4,6
	; position 10 - pattern 6
	db	6,2,6,8,4,4,8,2,8,2,4,4,6,6,2,6,8,4,4,8,2,8,2,4,4,6
	; position 11 - pattern 6
	db	6,2,6,8,4,4,8,2,8,2,4,4,6,6,2,6,8,4,4,8,2,8,2,4,4,6
	; position 12 - pattern 7
	db	6,2,6,8,4,4,8,2,8,2,4,4,6,6,2,6,8,4,4,8,2,8,2,4,4,6

	; 16:  percussion / 09|hihat
	; position 1 - pattern 1
	db	88,64
	; position 2 - pattern 1
	db	64,64
	; position 3 - pattern 2
	db	64,64
	; position 4 - pattern 2
	db	64,64
	; position 5 - pattern 3
	db	64,64
	; position 6 - pattern 3
	db	64,64
	; position 7 - pattern 3
	db	64,64
	; position 9 - pattern 5
	db	-1,192,64
	; position 10 - pattern 6
	db	64,64
	; position 11 - pattern 6
	db	64,64
	; position 12 - pattern 7
	db	64,64


	section notesamp data align=1

_NoteSamples:
	; 00:  percussion echo / 10|hihatlow copy
	; position 1 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 3 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 4 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 5 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 6 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 7 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 8 - pattern 4
	db	0
	; position 9 - pattern 5
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	-1

	; 01:  percussion echo / 0F|clap1
	; position 1 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 3 - pattern 2
	db	1,1,1,1,1,1,1,1,1,1
	; position 4 - pattern 2
	db	1,1,1,1,1,1,1,1,1,1
	; position 5 - pattern 3
	db	1,1,1,1,1,1,1,1,1,1
	; position 6 - pattern 3
	db	1,1,1,1,1,1,1,1,1,1
	; position 7 - pattern 3
	db	1,1,1,1,1,1,1,1,1,1
	; position 9 - pattern 5
	db	1,1,1,1,1,1,1,1,1,1
	; position 10 - pattern 6
	db	1,1,1,1,1,1,1,1,1,1
	; position 11 - pattern 6
	db	1,1,1,1,1,1,1,1,1,1
	; position 12 - pattern 7
	db	1,1,1,1,1,1,1,1,1,1
	db	-1

	; 02:  percussion echo / 11|hihat copy
	; position 1 - pattern 1
	db	0,0
	; position 2 - pattern 1
	db	0,0
	; position 3 - pattern 2
	db	0,0
	; position 4 - pattern 2
	db	0,0
	; position 5 - pattern 3
	db	0,0
	; position 6 - pattern 3
	db	0,0
	; position 7 - pattern 3
	db	0,0
	; position 9 - pattern 5
	db	0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0
	db	-1

	; 03:  percussion echo / 02|thinsnare
	; position 1 - pattern 1
	db	0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0
	; position 3 - pattern 2
	db	0,0,0,0
	; position 4 - pattern 2
	db	0,0,0,0
	; position 5 - pattern 3
	db	0,0,0,0
	; position 6 - pattern 3
	db	0,0,0,0
	; position 7 - pattern 3
	db	0,0,0,0
	; position 9 - pattern 5
	db	0,0,0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0,0,0
	db	-1

	; 04:  percussion echo / 11|hihat copy
	; position 1 - pattern 1
	db	0,0
	; position 2 - pattern 1
	db	0,0
	; position 3 - pattern 2
	db	0,0
	; position 4 - pattern 2
	db	0,0
	; position 5 - pattern 3
	db	0,0
	; position 6 - pattern 3
	db	0,0
	; position 7 - pattern 3
	db	0,0
	; position 9 - pattern 5
	db	0,0
	; position 10 - pattern 6
	db	0,0
	; position 11 - pattern 6
	db	0,0
	; position 12 - pattern 7
	db	0,0
	db	-1

	; 05:  intro melo 2 + main strings / 0D|string
	; position 0 - pattern 0
	db	0
	; position 8 - pattern 4
	db	3,1,2,1
	; position 9 - pattern 5
	db	3,1,2,1
	; position 10 - pattern 6
	db	3,1,2,1
	; position 11 - pattern 6
	db	3,1,2,1
	; position 12 - pattern 7
	db	3,1,2,1
	; position 13 - pattern 8
	db	3,1,2,1
	db	-1

	; 06:  intro melo 2 + main strings / 0D|string
	; position 5 - pattern 3
	db	2,3,5,1
	; position 6 - pattern 3
	db	2,3,5,1
	; position 7 - pattern 3
	db	2,3,5,1
	; position 8 - pattern 4
	db	0,0
	; position 9 - pattern 5
	db	0,0
	; position 10 - pattern 6
	db	0,0
	; position 11 - pattern 6
	db	0,0
	; position 12 - pattern 7
	db	0,0
	; position 13 - pattern 8
	db	4,0
	db	-1

	; 07:  intro melo 2 + main strings / 0D|string
	; position 5 - pattern 3
	db	1,0,2,3,0
	; position 6 - pattern 3
	db	1,0,2,3,0
	; position 7 - pattern 3
	db	1,0,2,3,0
	; position 8 - pattern 4
	db	1,0,1,0
	; position 9 - pattern 5
	db	1,0,1,0
	; position 10 - pattern 6
	db	1,0,1,0
	; position 11 - pattern 6
	db	1,0,1,0
	; position 12 - pattern 7
	db	1,0,1,0
	; position 13 - pattern 8
	db	1,0,1,0
	db	-1

	; 08:  intro melo 3 + main melo / 0C|melo 2
	; position 8 - pattern 4
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 9 - pattern 5
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 10 - pattern 6
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 11 - pattern 6
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 12 - pattern 7
	db	4,2,1,0,5,2,0,4,6,5,6,8,9,11,2,10,7,6
	; position 13 - pattern 8
	db	4,2,1,0,5,2,0,4,6,5,6,8,9,11,2,10,7,6
	db	-1

	; 09:  intro melo 3 + main melo / 12|not used 2
	; position 8 - pattern 4
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 9 - pattern 5
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 10 - pattern 6
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 11 - pattern 6
	db	4,2,1,0,5,2,0,4,6,5,6,8,3,2
	; position 12 - pattern 7
	db	4,2,1,0,5,2,0,4,6,5,6,8,9,11,2,10,7,6
	; position 13 - pattern 8
	db	4,2,1,0,5,2,0,4,6,5,6,8,9,11,2,10,7,6
	db	-1

	; 10:  intro melo 3 + main melo / 06|melo 3
	; position 1 - pattern 1
	db	1,4,18,14,3,5,0,6,1,4,18,14,3,5,0,7,16,13
	; position 2 - pattern 1
	db	1,4,18,14,3,5,0,6,1,4,18,14,3,5,0,7,16,13
	; position 3 - pattern 2
	db	1,4,18,14,3,5,0,6,1,4,18,14,3,5,0,7,16,13,11,9,8
	; position 4 - pattern 2
	db	1,4,18,14,3,5,0,6,1,4,18,14,3,5,0,7,16,13,11,9,8
	; position 5 - pattern 3
	db	1,4,18,14,3,5,15,0,10,1,4,18,14,3,5,15,0,17,16,13,11,9,8
	; position 6 - pattern 3
	db	1,4,18,14,3,5,15,0,10,1,4,18,14,3,5,15,0,17,16,13,11,9,8
	; position 7 - pattern 3
	db	1,4,18,14,3,5,15,0,10,1,4,18,14,3,5,15,0,17,16,13,11,9,8
	; position 8 - pattern 4
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	; position 9 - pattern 5
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	; position 10 - pattern 6
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	; position 11 - pattern 6
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	; position 12 - pattern 7
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	; position 13 - pattern 8
	db	1,4,18,14,3,5,0,7,16,12,1,4,20,22,3,5,0,7,21,20,2,19,16
	db	-1

	; 11:  intro melo 1 / 0E|intro string
	; position 10 - pattern 6
	db	4,5,2,1,3,0
	; position 11 - pattern 6
	db	4,5,2,1,3,0
	; position 12 - pattern 7
	db	4,5,2,1,3,0
	; position 13 - pattern 8
	db	4,5,2,1,3,0
	db	-1

	; 12:  kick / 00|basicbassdrum
	; position 1 - pattern 1
	db	1,0,2,2,2,2,0,2,2,2
	; position 2 - pattern 1
	db	1,0,2,2,2,2,0,2,2,2
	; position 3 - pattern 2
	db	1,0,2,2,2,2,0,2,2,2
	; position 4 - pattern 2
	db	1,0,2,2,2,2,0,2,2,2
	; position 5 - pattern 3
	db	1,0,2,2,2,2,0,2,2,2
	; position 6 - pattern 3
	db	1,0,2,2,2,2,0,2,2,2
	; position 7 - pattern 3
	db	1,0,2,2,2,2,0,2,2,2
	; position 8 - pattern 4
	db	1,2
	; position 9 - pattern 5
	db	1,0,2,2,2,2,0,2,2,2
	; position 10 - pattern 6
	db	1,0,2,2,2,2,0,2,2,2
	; position 11 - pattern 6
	db	1,0,2,2,2,2,0,2,2,2
	; position 12 - pattern 7
	db	1,0,2,2,2,2,0,2,2,2
	; position 13 - pattern 8
	db	1
	db	-1

	; 13:  percussion / 09|hihat
	; position 1 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 3 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0
	; position 4 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0
	; position 5 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 6 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 7 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 9 - pattern 5
	db	0,0,0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0,0,0
	db	-1

	; 14:  percussion / 05|clap1
	; position 1 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0
	; position 3 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0
	; position 4 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0
	; position 5 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 6 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 7 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0
	; position 9 - pattern 5
	db	0,0,0,0,0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0,0,0,0,0
	db	-1

	; 15:  percussion / 0A|hihat low
	; position 1 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 2 - pattern 1
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 3 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 4 - pattern 2
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 5 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 6 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 7 - pattern 3
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 8 - pattern 4
	db	0
	; position 9 - pattern 5
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 10 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 11 - pattern 6
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	; position 12 - pattern 7
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	-1

	; 16:  percussion / 09|hihat
	; position 1 - pattern 1
	db	0,0
	; position 2 - pattern 1
	db	0,0
	; position 3 - pattern 2
	db	0,0
	; position 4 - pattern 2
	db	0,0
	; position 5 - pattern 3
	db	0,0
	; position 6 - pattern 3
	db	0,0
	; position 7 - pattern 3
	db	0,0
	; position 9 - pattern 5
	db	0,0
	; position 10 - pattern 6
	db	0,0
	; position 11 - pattern 6
	db	0,0
	; position 12 - pattern 7
	db	0,0
	db	-1

