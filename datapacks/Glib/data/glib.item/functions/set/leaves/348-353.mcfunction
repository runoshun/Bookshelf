execute if score @s glib.itemId matches 348 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dripstone_block","Count":1b}}
execute if score @s glib.itemId matches 349 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:dropper","Count":1b}}
execute if score @s glib.itemId matches 350 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:drowned_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 351 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:echo_shard","Count":1b}}
execute if score @s glib.itemId matches 352 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:egg","Count":1b}}
execute if score @s glib.itemId matches 353 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:elder_guardian_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
