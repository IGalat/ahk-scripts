; status : finished

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := true

; for initial trap and whiteout
initialWalls := [{x: 1324, y: 246}, {x: 1237, y: 416}, {x: 1208, y: 414}, {x: 620, y: 440}]

; if walls are not swag enough. Will be empty
initialTowers := [{x: 1168, y: 736}]

; traps to start with, on instakill phase
initialManaTraps := [{x: 663, y: 649}, {x: 664, y: 593}]

initialManaAmps := [{x: 720, y: 706}, {x: 719, y: 654}, {x: 719, y: 596}, {x: 607, y: 707}, {x: 604, y: 652}, {x: 605, y: 593}]

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := [{x: 665, y: 820}]

; {gradeOfBomb : [{x, y}, {x, y}]} ; example: {5: [{x: 1549, y: 165}]}
initialDemolitions := {5: [{x: 250, y: 217}]}

; with main setup
secondaryDemolitions := {1: []}

; right after selling initial gems. This is to get rid of initial if it's in the way
tertiaryDemolitions := {1: []}

; just general mob-directing
structuralWalls := []

manaTraps := [{x: 889, y: 230}, {x: 945, y: 229}, {x: 997, y: 231}, {x: 1054, y: 232}, {x: 1112, y: 232}
    , {x: 1167, y: 231}, {x: 1167, y: 286}, {x: 1167, y: 347}
    , {x: 1109, y: 344}, {x: 1058, y: 342}, {x: 997, y: 342}, {x: 941, y: 349}, {x: 891, y: 348}]

; amps supporting 1 trap
manaAmps1 := [{x: 831, y: 171}, {x: 1222, y: 172}, {x: 1223, y: 400}]

; amps supporting 2 traps
manaAmps2 := [{x: 832, y: 288}, {x: 883, y: 171}, {x: 1167, y: 173}, {x: 1225, y: 229}, {x: 1220, y: 340}, {x: 1167, y: 400}, {x: 889, y: 404}]

; amps supporting 3 traps
manaAmps3 := [{x: 940, y: 174}, {x: 996, y: 174}, {x: 1052, y: 174}, {x: 1112, y: 174}, {x: 1223, y: 286}, {x: 1112, y: 400}, {x: 1057, y: 400}, {x: 1002, y: 400}, {x: 940, y: 398}]

; amps supporting 4-5 traps
manaAmps45 := [{x: 888, y: 290}, {x: 944, y: 289}, {x: 1001, y: 286}, {x: 1053, y: 286}]

; amps supporting 6-7 traps
manaAmps67 := [{x: 1112, y: 288}]


critTraps := [{x: 778, y: 372}, {x: 777, y: 427}, {x: 774, y: 486}, {x: 772, y: 538}, {x: 777, y: 594}, {x: 776, y: 654}]

; same as manaAmps1
critAmps1 := [{x: 719, y: 316}, {x: 717, y: 705}, {x: 830, y: 706}]

critAmps2 := [{x: 829, y: 649}, {x: 721, y: 653}, {x: 721, y: 374}, {x: 828, y: 371}]

critAmps3 := [{x: 720, y: 427}, {x: 720, y: 483}, {x: 720, y: 542}, {x: 719, y: 595}, {x: 832, y: 426}, {x: 829, y: 481}, {x: 829, y: 540}, {x: 830, y: 596}]

critAmps45 := []

critAmps67 := []

slowLanterns := [{x: 747, y: 198}]

slowAmps := [{x: 687, y: 201}, {x: 691, y: 142}, {x: 747, y: 147}]

bleedLantern := [{x: 553, y: 480}]

bleedAmps := [{x: 608, y: 537}, {x: 550, y: 535}, {x: 493, y: 538}, {x: 495, y: 481}, {x: 496, y: 425}, {x: 550, y: 424}, {x: 606, y: 426}, {x: 607, y: 480}]

; for future slow or bleed
emptyLanterns := []

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually built near crit or bleed amps
antiSpecialTowers := [{x: 690, y: 90}]

; in the middle of mana farm
secondSpellSpot := [{x: 1017, y: 288}]

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := [{x: 202, y: 43, xx: 202, yy: 107}, {x: 89, y: 159, xx: 90, yy: 300}, {x: 122, y: 165, xx: 122, yy: 304}
    , {x: 427, y: 166}, {x: 479, y: 50, xx: 649, yy: 52}, {x: 511, y: 107, xx: 485, yy: 107}
    , {x: 821, y: 105, xx: 873, yy: 108}, {x: 873, y: 51}, {x: 600, y: 164, xx: 623, yy: 165}
    , {x: 533, y: 215, xx: 619, yy: 215}, {x: 345, y: 274, xx: 423, yy: 277}, {x: 179, y: 330, xx: 428, yy: 333}
    , {x: 287, y: 381, xx: 426, yy: 387}, {x: 307, y: 447, xx: 430, yy: 441}, {x: 314, y: 496, xx: 429, yy: 499}
    , {x: 315, y: 557, xx: 423, yy: 552}, {x: 405, y: 606, xx: 539, yy: 606}, {x: 423, y: 662, xx: 538, yy: 663}
    , {x: 424, y: 719, xx: 541, yy: 720}, {x: 89, y: 667, xx: 314, yy: 666}, {x: 95, y: 724, xx: 311, yy: 719}
    , {x: 206, y: 777, xx: 342, yy: 779}, {x: 226, y: 835, xx: 455, yy: 836}, {x: 234, y: 890, xx: 424, yy: 886}]

antiBeaconWalls2 := [{x: 286, y: 946, xx: 455, yy: 947}, {x: 284, y: 969}, {x: 373, y: 1031, xx: 733, yy: 1029}, {x: 760, y: 888}
    , {x: 735, y: 778, xx: 1103, yy: 781}, {x: 1155, y: 471, xx: 1154, yy: 668}, {x: 1124, y: 667}
    , {x: 957, y: 554, xx: 962, yy: 528}, {x: 1042, y: 552, xx: 1040, yy: 530}, {x: 988, y: 499, xx: 1016, yy: 499}
    , {x: 1045, y: 1033, xx: 1465, yy: 1032}, {x: 1543, y: 890, xx: 1547, yy: 835}, {x: 1604, y: 836, xx: 1634, yy: 835}
    , {x: 1599, y: 863}, {x: 1688, y: 696, xx: 1548, yy: 696}, {x: 1546, y: 643, xx: 1686, yy: 642}
    , {x: 1545, y: 584, xx: 1551, yy: 333}, {x: 1407, y: 389, xx: 1493, yy: 385}, {x: 1406, y: 413, xx: 1489, yy: 413}
    , {x: 959, y: 917, xx: 1434, yy: 921}, {x: 989, y: 946}, {x: 1405, y: 885, xx: 1406, yy: 557}, {x: 1434, y: 807, xx: 1435, yy: 857}]

antiBeaconWalls3 := [{x: 1378, y: 890}, {x: 1237, y: 779, xx: 1270, yy: 779}, {x: 1270, y: 726}
    , {x: 1292, y: 529, xx: 1298, yy: 302}, {x: 1608, y: 412, xx: 1606, yy: 272}, {x: 1691, y: 384, xx: 1682, yy: 160}
    , {x: 1624, y: 161, xx: 1630, yy: 136}, {x: 1580, y: 158, xx: 1572, yy: 47}, {x: 1297, y: 49, xx: 1523, yy: 54}
    , {x: 1463, y: 251, xx: 1465, yy: 162}, {x: 1405, y: 244, xx: 1406, yy: 164}, {x: 1379, y: 191}, {x: 1514, y: 443}
    , {x: 1351, y: 163, xx: 1285, yy: 162}, {x: 1180, y: 105, xx: 1100, yy: 109}, {x: 1160, y: 46, xx: 1097, yy: 52}]

antiBeaconWalls4 := [{x: 568, y: 162}, {x: 788, y: 275}, {x: 287, y: 581}, {x: 179, y: 132}, {x: 958, y: 1032}]

antiBeaconWalls5 := []

