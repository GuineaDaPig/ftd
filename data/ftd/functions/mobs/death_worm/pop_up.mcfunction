##
 # pop_up.mcfunction
 # For the death worm
 #
 # Created by GuineaPvp
##

execute if block ~ ~-1 ~ sand run particle block sand ~ ~ ~ 0.5 0.25 0.5 0 15 force
execute if block ~ ~-1 ~ stone run particle block stone ~ ~ ~ 0.5 0.25 0.5 0 15 force
execute if block ~ ~-1 ~ sandstone run particle block sandstone ~ ~ ~ 0.5 0.25 0.5 0 15 force

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:1}}]}
tag @s remove down
tag @s add stage_1
tag @s remove stage_2