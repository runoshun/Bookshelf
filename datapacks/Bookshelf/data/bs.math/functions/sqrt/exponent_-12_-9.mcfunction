# if E = -9
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 549755813888
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000001646361269956798229220581542163654754917789801993421860970556735992431640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -10
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 1099511627776
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000582076609134674072265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -11
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 2199023255552
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000008231806349783991146102907710818273774588949009967109304852783679962158203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -12
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 4398046511104
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.00000000002910383045673370361328125 run scoreboard players get #math.sqrt.out bs.data