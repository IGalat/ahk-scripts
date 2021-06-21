; status : finished

; for initial trap and whiteout
initialWalls := [{x: 1094, y: 106}, {x: 1099, y: 301}, {x: 1638, y: 192}, {x: 1635, y: 211}, {x: 1650, y: 211}, {x: 1657, y: 193}
    , {x: 518, y: 239}, {x: 595, y: 239}, {x: 599, y: 302}, {x: 261, y: 353}]

; traps to start with, on instakill phase
initialManaTraps := [{x: 1132, y: 196}, {x: 1074, y: 200}]

initialManaAmps := [{x: 1198, y: 146}, {x: 1139, y: 148}, {x: 1079, y: 148}, {x: 1084, y: 248}, {x: 1146, y: 248}, {x: 1195, y: 249}]

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := [{x: 1309, y: 202}]

manaTraps := [{x: 350, y: 86}, {x: 303, y: 95}, {x: 242, y: 86}, {x: 189, y: 92}
    , {x: 132, y: 94}, {x: 134, y: 144}, {x: 132, y: 194}
    , {x: 185, y: 200}, {x: 239, y: 203}, {x: 300, y: 199}
    , {x: 359, y: 199}, {x: 358, y: 263}, {x: 358, y: 303}
    , {x: 285, y: 308}, {x: 241, y: 312}]

; amps supporting 1 trap
manaAmps1 := [{x: 418, y: 364}, {x: 182, y: 312}, {x: 189, y: 366}, {x: 82, y: 253}, {x: 85, y: 29}, {x: 407, y: 43}, {x: 405, y: 145}]

; amps supporting 2 traps
manaAmps2 := [{x: 135, y: 254}, {x: 73, y: 195}, {x: 70, y: 80}, {x: 124, y: 29}, {x: 355, y: 38}, {x: 413, y: 202}, {x: 403, y: 313}, {x: 354, y: 360}]

; amps supporting 3 traps
manaAmps3 := [{x: 191, y: 37}, {x: 243, y: 41}, {x: 306, y: 34}, {x: 78, y: 146}, {x: 295, y: 366}, {x: 410, y: 254}]

; amps supporting 4-5 traps
manaAmps45 := [{x: 239, y: 261}, {x: 187, y: 263}, {x: 356, y: 154}]

; amps supporting 6-7 traps
manaAmps67 := [{x: 187, y: 148}, {x: 244, y: 148}, {x: 299, y: 144}, {x: 299, y: 251}]


critTraps := [{x: 245, y: 434}, {x: 251, y: 484}, {x: 243, y: 546}, {x: 236, y: 589}, {x: 239, y: 655}, {x: 245, y: 701}]

critAmps1 := [{x: 295, y: 764}, {x: 187, y: 761}]

critAmps2 := [{x: 301, y: 704}, {x: 189, y: 704}, {x: 178, y: 423}, {x: 305, y: 421}]

critAmps3 := [{x: 299, y: 651}, {x: 297, y: 595}, {x: 299, y: 538}, {x: 302, y: 483}
    , {x: 189, y: 472}, {x: 184, y: 535}, {x: 185, y: 588}, {x: 187, y: 644}]

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually is built near crit or bleed amps
antiSpecialTowers := [{x: 414, y: 597}, {x: 1639, y: 193}]

slowLanterns := [{x: 518, y: 308}, {x: 71, y: 372}]

slowAmps := [{x: 588, y: 251}, {x: 582, y: 312}, {x: 581, y: 368}, {x: 528, y: 370}, {x: 466, y: 371}, {x: 471, y: 316}, {x: 469, y: 257}, {x: 527, y: 258}
    , {x: 78, y: 307}, {x: 126, y: 315}, {x: 127, y: 366}, {x: 127, y: 422}, {x: 72, y: 422}]

bleedLantern := [{x: 408, y: 481}]

bleedAmps := [{x: 466, y: 425}, {x: 464, y: 486}, {x: 467, y: 534}, {x: 405, y: 535}
    , {x: 359, y: 537}, {x: 356, y: 478}, {x: 356, y: 425}, {x: 418, y: 424}]

; in the middle of mana farm
secondSpellSpot := [{x: 274, y: 190}]

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := [{x: 1689, y: 48, xx: 485, yy: 49}, {x: 92, y: 326, xx: 88, yy: 1028}, {x: 138, y: 1030}
    , {x: 340, y: 1036, xx: 1692, yy: 1037}, {x: 1686, y: 975, xx: 1690, yy: 389}, {x: 1622, y: 387, xx: 825, yy: 386}
    , {x: 1181, y: 358, xx: 652, yy: 349}, {x: 393, y: 671}, {x: 397, y: 720, xx: 1372, yy: 720}
    , {x: 1351, y: 696, xx: 821, yy: 686}
    , {x: 599, y: 552}, {x: 614, y: 554}, {x: 1496, y: 756}, {x: 1568, y: 753}]

antiBeaconWalls2 := [{x: 854, y: 504, xx: 1319, yy: 502}, {x: 848, y: 583, xx: 1322, yy: 584}
    , {x: 428, y: 831, xx: 1322, yy: 836}, {x: 426, y: 913, xx: 1321, yy: 918}, {x: 652, y: 243}, {x: 710, y: 246}
    , {x: 787, y: 248}, {x: 867, y: 248}, {x: 957, y: 249}, {x: 962, y: 158}, {x: 872, y: 162}, {x: 787, y: 165}
    , {x: 712, y: 165}, {x: 625, y: 165}, {x: 539, y: 164}, {x: 481, y: 163}]


