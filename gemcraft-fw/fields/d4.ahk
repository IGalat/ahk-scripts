; status : finished

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := false

; for initial trap and whiteout
initialWalls := [{x: 428, y: 276}, {x: 228, y: 161, xx: 203, yy: 157}, {x: 231, y: 216, xx: 145, yy: 215}, {x: 397, y: 328, xx: 174, yy: 323}, {x: 147, y: 355, xx: 115, yy: 357}, {x: 91, y: 330, xx: 91, yy: 186}
    , {x: 986, y: 329, xx: 846, yy: 333}, {x: 708, y: 332, xx: 681, yy: 332}, {x: 88, y: 384}]

; traps to start with, on instakill phase
initialManaTraps := [{x: 329, y: 202}, {x: 273, y: 205}]

initialManaAmps := [{x: 383, y: 146}, {x: 327, y: 146}, {x: 267, y: 150}, {x: 386, y: 259}, {x: 329, y: 260}, {x: 272, y: 261}]

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := [{x: 459, y: 125}]

; {gradeOfBomb : [{x, y}, {x, y}]} ; example: {5: [{x: 1549, y: 165}]}
initialDemolitions := {5: [{x: 1549, y: 165}]}

; right after selling initial gems. This is to get rid of initial if it's in the way
tertiaryDemolitions := {1: [{x: 146, y: 362}]}

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually built near crit or bleed amps
antiSpecialTowers := [{x: 184, y: 807}]

manaTraps := [{x: 242, y: 455}, {x: 242, y: 511}, {x: 240, y: 559}, {x: 245, y: 626}, {x: 243, y: 681}, {x: 299, y: 678}, {x: 358, y: 676}, {x: 353, y: 620}, {x: 357, y: 563}, {x: 354, y: 510}, {x: 357, y: 456}, {x: 416, y: 457}, {x: 464, y: 457}, {x: 463, y: 515}, {x: 463, y: 560}, {x: 465, y: 619}, {x: 465, y: 677}]

; amps supporting 1 trap
manaAmps1 := [{x: 186, y: 401}, {x: 189, y: 735}, {x: 524, y: 400}]

; amps supporting 2 traps
manaAmps2 := [{x: 244, y: 733}, {x: 188, y: 681}, {x: 186, y: 451}, {x: 296, y: 401}, {x: 470, y: 396}, {x: 528, y: 451}, {x: 523, y: 675}, {x: 413, y: 734}, {x: 354, y: 732}, {x: 356, y: 398}]

; amps supporting 3 traps
manaAmps3 := [{x: 186, y: 623}, {x: 187, y: 569}, {x: 191, y: 512}, {x: 412, y: 396}, {x: 524, y: 508}, {x: 523, y: 563}, {x: 519, y: 621}, {x: 297, y: 733}]

; amps supporting 4-5 traps
manaAmps45 := [{x: 302, y: 457}, {x: 299, y: 510}, {x: 301, y: 568}, {x: 409, y: 567}, {x: 409, y: 623}, {x: 410, y: 681}]

; amps supporting 6-7 traps
manaAmps67 := [{x: 297, y: 621}, {x: 407, y: 507}]


critTraps := [{x: 464, y: 791}, {x: 466, y: 845}, {x: 522, y: 850}, {x: 577, y: 851}, {x: 635, y: 850}, {x: 695, y: 851}]

; same as manaAmps1
critAmps1 := [{x: 520, y: 735}, {x: 410, y: 900}, {x: 745, y: 900}]

critAmps2 := [{x: 409, y: 792}, {x: 411, y: 847}, {x: 464, y: 900}, {x: 692, y: 901}, {x: 692, y: 789}]

critAmps3 := [{x: 520, y: 900}, {x: 575, y: 902}, {x: 635, y: 902}, {x: 633, y: 790}, {x: 580, y: 789}]

critAmps45 := [{x: 521, y: 791}]

slowLanterns := [{x: 78, y: 594}]

slowAmps := [{x: 73, y: 648}, {x: 127, y: 648}, {x: 133, y: 592}, {x: 129, y: 538}, {x: 76, y: 537}]

bleedLantern := [{x: 303, y: 847}]

bleedAmps := [{x: 357, y: 789}, {x: 358, y: 848}, {x: 357, y: 901}, {x: 301, y: 911}, {x: 243, y: 903}, {x: 245, y: 846}, {x: 247, y: 793}]

; in the middle of mana farm
secondSpellSpot := [{x: 353, y: 555}]

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := [{x: 594, y: 103}, {x: 93, y: 587, xx: 88, yy: 640}, {x: 226, y: 1032, xx: 285, yy: 1032}
    , {x: 259, y: 921, xx: 258, yy: 971}, {x: 316, y: 938, xx: 310, yy: 973}, {x: 614, y: 1023, xx: 1345, yy: 1025}
    , {x: 1353, y: 1003, xx: 620, yy: 999}, {x: 1683, y: 775, xx: 1686, yy: 470}, {x: 600, y: 554, xx: 597, yy: 444}
    , {x: 642, y: 444, xx: 655, yy: 553}, {x: 768, y: 275, xx: 759, yy: 361}, {x: 790, y: 355}, {x: 624, y: 134}
    , {x: 786, y: 490, xx: 853, yy: 492}, {x: 822, y: 463}, {x: 817, y: 519}, {x: 902, y: 580, xx: 981, yy: 581}
    , {x: 926, y: 630, xx: 989, yy: 631}, {x: 936, y: 832, xx: 966, yy: 832}, {x: 954, y: 779}
    , {x: 1064, y: 808, xx: 1132, yy: 808}, {x: 1319, y: 779}, {x: 1460, y: 695, xx: 1461, yy: 527}
    , {x: 1494, y: 608}, {x: 1408, y: 640, xx: 1403, yy: 496}, {x: 1233, y: 609, xx: 1236, yy: 545}, {x: 1209, y: 520}]

antiBeaconWalls2 := [{x: 1239, y: 246}, {x: 1238, y: 268}, {x: 1373, y: 50, xx: 1541, yy: 50}
    , {x: 1387, y: 112, xx: 1441, yy: 111}, {x: 1375, y: 133}, {x: 1349, y: 275, xx: 1545, yy: 273}
    , {x: 1396, y: 219, xx: 1440, yy: 220}, {x: 1465, y: 322, xx: 1543, yy: 323}]


