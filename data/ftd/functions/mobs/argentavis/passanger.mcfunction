data merge entity @s {Fire:0s}
execute if entity @s[x_rotation=-90..-50] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:4}}]} 
execute if entity @s[x_rotation=-49..90] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:3}}]} 
execute positioned ~ ~-1 ~ unless entity @e[tag=argent,type=phantom,distance=..2] run kill @s
execute positioned ~ ~-1.8 ~ positioned ^ ^ ^1.8 if entity @e[type=!#ftd:do_not_target,type=!minecraft:phantom,type=!husk,distance=..2] run function ftd:mobs/argentavis/pass_function 
execute positioned ~ ~-1.8 ~ positioned ^ ^ ^1.8 unless entity @e[type=!#ftd:do_not_target,type=!minecraft:phantom,type=!husk,distance=..2] run scoreboard players set @s timer_ftd 0
