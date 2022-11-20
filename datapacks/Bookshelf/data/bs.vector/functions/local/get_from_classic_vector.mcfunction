#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/get_from_local_vector
# Documentation: https://bs-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score) : Local Vector Left
# Input: @s bs.var1 (score) : Local Vector Up
# Input: @s bs.var2 (score) : Local Vector Front
# Output: @s Res0 (score) : Vector X
# Output: @s Res1 (score) : Vector Y
# Output: @s Res2 (score) : Vector Z

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorX dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vectorY dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

scoreboard objectives add bs.vectorLeft dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Left","color":"aqua"}]
scoreboard objectives add bs.vectorUp dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Up","color":"aqua"}]
scoreboard objectives add bs.vectorFront dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Front","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation backup.localVector.var0 bs = @s bs.var0
scoreboard players operation backup.localVector.var1 bs = @s bs.var1
scoreboard players operation backup.localVector.var2 bs = @s bs.var2
scoreboard players operation backup.localVector.var3 bs = @s bs.var3
scoreboard players operation backup.localVector.var4 bs = @s bs.var4
scoreboard players operation backup.localVector.res0 bs = @s bs.res0
scoreboard players operation backup.localVector.res1 bs = @s bs.res1
scoreboard players operation backup.localVector.res2 bs = @s bs.res2
scoreboard players operation backup.localVector.oriH bs = @s bs.oriH
scoreboard players operation backup.localVector.oriV bs = @s bs.oriV

# Calcul
scoreboard players operation @s bs.var0 = @s bs.vectorX
scoreboard players operation @s bs.var1 = @s bs.vectorY
scoreboard players operation @s bs.var2 = @s bs.vectorZ

execute at @s run function bs.orientation:get
scoreboard players operation @s bs.var3 = @s bs.oriH
scoreboard players operation @s bs.var4 = @s bs.oriV

function bs.math:basis_rotation_3d

scoreboard players operation @s bs.vectorLeft = @s bs.res0
scoreboard players operation @s bs.vectorUp = @s bs.res1
scoreboard players operation @s bs.vectorFront = @s bs.res2

# Restore
scoreboard players operation @s bs.var0 = backup.localVector.var0 bs
scoreboard players operation @s bs.var1 = backup.localVector.var1 bs
scoreboard players operation @s bs.var2 = backup.localVector.var2 bs
scoreboard players operation @s bs.var3 = backup.localVector.var3 bs
scoreboard players operation @s bs.var4 = backup.localVector.var4 bs
scoreboard players operation @s bs.res0 = backup.localVector.res0 bs
scoreboard players operation @s bs.res1 = backup.localVector.res1 bs
scoreboard players operation @s bs.res2 = backup.localVector.res2 bs
scoreboard players operation @s bs.oriH = backup.localVector.oriH bs
scoreboard players operation @s bs.oriV = backup.localVector.oriV bs
