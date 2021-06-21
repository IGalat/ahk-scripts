; status : finished

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := false

; for initial trap and whiteout
initialWalls := []

; if walls are not swag enough. Will be empty
initialTowers := [{x: 918, y: 652}]

; traps to start with, on instakill phase
initialManaTraps := [{x: 329, y: 877}, {x: 381, y: 876}]

initialManaAmps := [{x: 272, y: 927}, {x: 323, y: 926}, {x: 369, y: 926}, {x: 272, y: 819}, {x: 326, y: 819}, {x: 385, y: 818}]

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := [{x: 370, y: 925}]

; just general mob-directing
structuralWalls := [{x: 844, y: 273}]

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually built near crit or bleed amps
antiSpecialTowers := [{x: 1167, y: 286}]

; for future slow or bleed
emptyLanterns := [{x: 752, y: 204}]

manaTraps := [{x: 633, y: 542}, {x: 692, y: 540}, {x: 748, y: 542}, {x: 803, y: 542}
    , {x: 850, y: 543}, {x: 859, y: 478}, {x: 858, y: 430}
    , {x: 811, y: 428}, {x: 746, y: 429}, {x: 687, y: 431}
    , {x: 631, y: 431}, {x: 637, y: 364}, {x: 639, y: 319}
    , {x: 700, y: 319}, {x: 747, y: 320}, {x: 802, y: 322}, {x: 859, y: 323}]

; amps supporting 1 trap
manaAmps1 := [{x: 574, y: 590}, {x: 913, y: 596}, {x: 577, y: 262}, {x: 917, y: 317}]

; amps supporting 2 traps
manaAmps2 := [{x: 854, y: 595}, {x: 633, y: 597}, {x: 911, y: 537}, {x: 918, y: 427}, {x: 916, y: 365}, {x: 578, y: 483}, {x: 579, y: 417}, {x: 580, y: 317}, {x: 631, y: 252}]

; amps supporting 3 traps
manaAmps3 := [{x: 692, y: 595}, {x: 748, y: 594}, {x: 804, y: 589}, {x: 916, y: 484}, {x: 580, y: 367}, {x: 690, y: 260}, {x: 748, y: 261}, {x: 804, y: 260}]

; amps supporting 4-5 traps
manaAmps45 := [{x: 632, y: 480}, {x: 687, y: 482}, {x: 746, y: 480}, {x: 855, y: 368}, {x: 803, y: 371}, {x: 744, y: 372}]

; amps supporting 6-7 traps
manaAmps67 := [{x: 690, y: 373}, {x: 801, y: 481}]


critTraps := [{x: 858, y: 203}, {x: 858, y: 139}, {x: 858, y: 88}, {x: 911, y: 88}, {x: 968, y: 91}, {x: 1033, y: 91}]

; same as manaAmps1
critAmps1 := [{x: 914, y: 260}, {x: 803, y: 35}, {x: 1079, y: 32}, {x: 1080, y: 145}]

critAmps2 := [{x: 915, y: 200}, {x: 800, y: 204}, {x: 801, y: 87}, {x: 854, y: 31}, {x: 1024, y: 32}, {x: 1025, y: 148}]

critAmps3 := [{x: 801, y: 145}, {x: 966, y: 141}, {x: 968, y: 34}, {x: 912, y: 34}]

critAmps45 := [{x: 915, y: 149}]

slowLanterns := [{x: 463, y: 344}]

slowAmps := [{x: 523, y: 286}, {x: 527, y: 344}, {x: 527, y: 399}, {x: 468, y: 402}, {x: 416, y: 397}, {x: 414, y: 344}, {x: 414, y: 284}, {x: 471, y: 282}, {x: 690, y: 203}]

bleedLantern := [{x: 1059, y: 292}]

bleedAmps := [{x: 1055, y: 344}, {x: 1001, y: 345}, {x: 995, y: 288}, {x: 1001, y: 231}, {x: 1054, y: 231}, {x: 1107, y: 231}, {x: 1115, y: 285}, {x: 1111, y: 343}]

; in the middle of mana farm
secondSpellSpot := [{x: 749, y: 434}]

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := [{x: 282, y: 1028, xx: 345, yy: 1029}, {x: 478, y: 1035, xx: 625, yy: 1031}
    , {x: 761, y: 1032, xx: 880, yy: 1031}, {x: 451, y: 912, xx: 852, yy: 918}, {x: 851, y: 867, xx: 852, yy: 721}
    , {x: 735, y: 811}, {x: 592, y: 803, xx: 593, yy: 749}, {x: 568, y: 722}, {x: 405, y: 714}, {x: 317, y: 693, xx: 315, yy: 278}
    , {x: 430, y: 582, xx: 447, yy: 582}, {x: 164, y: 775, xx: 172, yy: 167}, {x: 225, y: 158, xx: 395, yy: 157}
    , {x: 117, y: 729, xx: 85, yy: 726}, {x: 89, y: 537, xx: 92, yy: 55}
    , {x: 145, y: 46}, {x: 370, y: 42, xx: 484, yy: 53}, {x: 517, y: 157}]

antiBeaconWalls2 := [{x: 1151, y: 51, xx: 1513, yy: 49}, {x: 1683, y: 104, xx: 1691, yy: 633}
    , {x: 1158, y: 157, xx: 1574, yy: 164}, {x: 1179, y: 278, xx: 1630, yy: 274}, {x: 1177, y: 383, xx: 1569, yy: 380}
    , {x: 1033, y: 410, xx: 1045, yy: 481}, {x: 1137, y: 417, xx: 1134, yy: 476}, {x: 1266, y: 500, xx: 1632, yy: 497}
    , {x: 1100, y: 612, xx: 1577, yy: 606}, {x: 1150, y: 810, xx: 1153, yy: 721}, {x: 1470, y: 818, xx: 1470, yy: 725}
    , {x: 1408, y: 725, xx: 1207, yy: 724}, {x: 1264, y: 834, xx: 1264, yy: 915}, {x: 1353, y: 844, xx: 1343, yy: 910}
    , {x: 1326, y: 946, xx: 1300, yy: 946}, {x: 987, y: 725, xx: 986, yy: 890}, {x: 1015, y: 725, xx: 1014, yy: 887}]

antiBeaconWalls3 := [{x: 1147, y: 919}, {x: 1208, y: 1027, xx: 1465, yy: 1028}, {x: 1465, y: 980, xx: 1466, yy: 946}
    , {x: 1603, y: 724, xx: 1605, yy: 837}, {x: 208, y: 836}, {x: 400, y: 220}, {x: 427, y: 470, xx: 512, yy: 470}
    , {x: 984, y: 585}]


