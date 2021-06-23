; status :

; do initial mana traps and farms occupy the place of manafarm?
initSamePlace := false

; for initial trap and whiteout
initialWalls := []

; if walls are not swag enough. Will be empty
initialTowers := []

; traps to start with, on instakill phase
initialManaTraps := []

initialManaAmps := []

; when a single mana trap is up, this hits mobs before it
initialWhiteoutSpot := []

; {gradeOfBomb : [{x, y}, {x, y}]} ; example: {5: [{x: 1549, y: 165}]}
initialDemolitions := {1: []}

; with main setup
secondaryDemolitions := {1: []}

; right after selling initial gems. This is to get rid of initial if it's in the way
tertiaryDemolitions := {1: []}

; just general mob-directing
structuralWalls := []

manaTraps := []

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


critTraps := []

; same as manaAmps1
critAmps1 := []

critAmps2 := []

critAmps3 := []

critAmps45 := []

critAmps67 := []

slowLanterns := []

slowAmps := []

bleedLantern := []

bleedAmps := []

; for future slow or bleed
emptyLanterns := []

; for fliers, spires, wisard hunters etc. Not filled/upgraded automatically. Usually built near crit or bleed amps
antiSpecialTowers := []

; in the middle of mana farm
secondSpellSpot := []

; antiBeaconWalls are split because there is (512?) char limit for initializing value. They are just grouped into one
antiBeaconWalls1 := []

antiBeaconWalls2 := []

antiBeaconWalls3 := []

antiBeaconWalls4 := []

antiBeaconWalls5 := []

