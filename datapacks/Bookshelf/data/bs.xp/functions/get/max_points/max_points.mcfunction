execute store result score #xp.get_max_points.levels bs.data store result score $xp.get_max_points bs.out run xp query @s levels

execute if score #xp.get_max_points.levels bs.data matches 0..15 run function bs.xp:get/max_points/0..15
execute if score #xp.get_max_points.levels bs.data matches 16..30 run function bs.xp:get/max_points/16..30
execute if score #xp.get_max_points.levels bs.data matches 31.. run function bs.xp:get/max_points/31..

execute store result storage bs:out xp.get_max_points int 1 run return run scoreboard players get $xp.get_max_points bs.out
