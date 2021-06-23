; status : finished

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := false

; for initial trap and whiteout
initialWalls := [{x: 1187, y: 129, xx: 1178, yy: 215}, {x: 1242, y: 111, xx: 1241, yy: 191}, {x: 1289, y: 137, xx: 1289, yy: 215}, {x: 1347, y: 112, xx: 1347, yy: 189}]

; if walls are not swag enough. Will be empty
initialTowers := []

; traps to start with, on instakill phase
initialManaTraps := [{x: 1051, y: 171}, {x: 998, y: 174}]

initialManaAmps := [{x: 1051, y: 118}, {x: 996, y: 118}, {x: 996, y: 226}, {x: 1057, y: 224}, {x: 1110, y: 230}, {x: 1111, y: 117}]

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := [{x: 1236, y: 171}]

; {gradeOfBomb : [{x, y}, {x, y}]} ; example: {5: [{x: 1549, y: 165}]}
initialDemolitions := {1: []}

; with main setup
secondaryDemolitions := {1: []}

; right after selling initial gems. This is to get rid of initial if it's in the way
tertiaryDemolitions := {1: []}

; just general mob-directing
structuralWalls := []

manaTraps := [{x: 691, y: 592}, {x: 633, y: 595}, {x: 570, y: 594}, {x: 523, y: 593}, {x: 463, y: 595}
    , {x: 408, y: 596}, {x: 407, y: 653}, {x: 409, y: 706}
    , {x: 472, y: 708}, {x: 523, y: 708}, {x: 582, y: 713}, {x: 638, y: 709}, {x: 686, y: 705}]

; amps supporting 1 trap
manaAmps1 := [{x: 744, y: 537}, {x: 352, y: 538}, {x: 354, y: 759}]

; amps supporting 2 traps
manaAmps2 := [{x: 749, y: 653}, {x: 690, y: 539}, {x: 410, y: 538}, {x: 355, y: 598}, {x: 353, y: 702}, {x: 411, y: 764}, {x: 693, y: 761}]

; amps supporting 3 traps
manaAmps3 := [{x: 634, y: 541}, {x: 579, y: 536}, {x: 521, y: 535}, {x: 469, y: 534}, {x: 355, y: 651}, {x: 466, y: 764}, {x: 522, y: 762}, {x: 578, y: 760}, {x: 637, y: 760}]

; amps supporting 4-5 traps
manaAmps45 := [{x: 693, y: 649}, {x: 638, y: 649}, {x: 580, y: 649}, {x: 521, y: 649}]

; amps supporting 6-7 traps
manaAmps67 := [{x: 467, y: 650}]


critTraps := [{x: 799, y: 703}, {x: 860, y: 702}, {x: 914, y: 705}, {x: 970, y: 703}, {x: 1027, y: 707}]

; same as manaAmps1
critAmps1 := [{x: 745, y: 767}, {x: 1085, y: 767}, {x: 1081, y: 650}]

critAmps2 := [{x: 805, y: 764}, {x: 1025, y: 761}, {x: 1025, y: 652}, {x: 809, y: 648}]

critAmps3 := [{x: 859, y: 762}, {x: 911, y: 763}, {x: 972, y: 763}, {x: 857, y: 648}, {x: 913, y: 650}, {x: 970, y: 653}]

critAmps45 := []

critAmps67 := []

slowLanterns := [{x: 916, y: 846}, {x: 607, y: 878}]

slowAmps := [{x: 857, y: 817}, {x: 860, y: 872}, {x: 972, y: 817}, {x: 973, y: 875}
    , {x: 581, y: 824}, {x: 637, y: 820}, {x: 605, y: 929}]

bleedLantern := [{x: 746, y: 876}]

bleedAmps := [{x: 802, y: 822}, {x: 802, y: 873}, {x: 804, y: 934}, {x: 743, y: 928}, {x: 693, y: 928}, {x: 689, y: 874}, {x: 691, y: 826}, {x: 749, y: 822}]

; for future slow or bleed
emptyLanterns := []

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually built near crit or bleed amps
antiSpecialTowers := [{x: 747, y: 989}]

; in the middle of mana farm
secondSpellSpot := [{x: 562, y: 644}]

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := [{x: 253, y: 47, xx: 592, yy: 52}, {x: 816, y: 48}, {x: 1066, y: 50, xx: 1287, yy: 52}
    , {x: 400, y: 283, xx: 1518, yy: 275}, {x: 397, y: 303, xx: 1522, yy: 302}, {x: 1325, y: 502, xx: 234, yy: 493}
    , {x: 208, y: 445, xx: 204, yy: 166}, {x: 292, y: 554, xx: 289, yy: 914}, {x: 342, y: 1033}, {x: 342, y: 832}
    , {x: 233, y: 863, xx: 232, yy: 559}, {x: 176, y: 830, xx: 176, yy: 727}, {x: 122, y: 777, xx: 116, yy: 746}
    , {x: 88, y: 774, xx: 89, yy: 754}, {x: 595, y: 1031, xx: 1070, yy: 1033}, {x: 628, y: 995, xx: 679, yy: 998}
    , {x: 959, y: 977, xx: 1075, yy: 977}, {x: 1099, y: 919, xx: 1123, yy: 919}]

antiBeaconWalls2 := [{x: 1040, y: 810, xx: 1206, yy: 812}, {x: 1123, y: 778, xx: 1202, yy: 778}
    , {x: 1153, y: 662, xx: 1549, yy: 662}, {x: 1315, y: 724, xx: 1488, yy: 719}, {x: 1324, y: 770, xx: 1491, yy: 776}
    , {x: 1328, y: 827, xx: 1482, yy: 829}, {x: 1329, y: 885, xx: 1383, yy: 884}, {x: 1493, y: 609, xx: 1685, yy: 606}
    , {x: 1493, y: 549, xx: 1689, yy: 552}, {x: 1494, y: 495, xx: 1689, yy: 500}, {x: 1516, y: 440, xx: 1677, yy: 440}
    , {x: 1510, y: 385, xx: 1570, yy: 385}, {x: 1522, y: 352}, {x: 1686, y: 104}]

antiBeaconWalls3 := []

antiBeaconWalls4 := []

antiBeaconWalls5 := []

