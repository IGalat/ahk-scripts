; status : made traps to indicate where the layout is

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := false

; for initial trap and whiteout
initialWalls := []

; traps to start with, on instakill phase
initialManaTraps := []

initialManaAmps := []

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := []

; just general mob-directing
structuralWalls := []

manaTraps := [{x: 245, y: 460}, {x: 245, y: 516}, {x: 244, y: 569}, {x: 245, y: 624}
    , {x: 246, y: 682}, {x: 294, y: 674}, {x: 356, y: 682}
    , {x: 366, y: 626}, {x: 355, y: 568}, {x: 355, y: 508}
    , {x: 356, y: 455}, {x: 417, y: 454}, {x: 471, y: 462}
    , {x: 475, y: 520}, {x: 473, y: 570}, {x: 472, y: 632}, {x: 468, y: 670}]

; amps supporting 1 trap
manaAmps1 := []

; amps supporting 2 traps
manaAmps2 := []

; amps supporting 3 traps
manaAmps3 := []

; amps supporting 4-5 traps
manaAmps45 := []

; amps supporting 6-7 traps
manaAmps67 := []


critTraps := [{x: 464, y: 791}, {x: 466, y: 845}, {x: 522, y: 850}, {x: 577, y: 851}, {x: 635, y: 850}, {x: 695, y: 851}]

; same as manaAmps1
critAmps1 := []

critAmps2 := []

critAmps3 := []

critAmps45 := []

critAmps67 := []

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually is built near crit or bleed amps
antiSpecialTowers := []

slowLanterns := []

slowAmps := []

bleedLantern := []

bleedAmps := []

; in the middle of mana farm
secondSpellSpot := []

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := []

antiBeaconWalls2 := []

antiBeaconWalls3 := []

antiBeaconWalls4 := []

antiBeaconWalls5 := []

