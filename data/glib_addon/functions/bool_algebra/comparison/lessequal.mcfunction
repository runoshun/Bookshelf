#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/comparison/lessequal
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# - At this end of the function, all inputs are clear.
# - Return 1 if Input1 <= Input2 else return 0

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
execute if score Input1 glib.var0 <= Input2 glib.var0 run scoreboard players set Output1 glib.var0 1
execute if score Input1 glib.var0 > Input2 glib.var0 run scoreboard players set Output1 glib.var0 0
function glib:math/bool/clearinput
