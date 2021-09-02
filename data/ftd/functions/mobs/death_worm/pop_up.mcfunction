##
 # pop_up.mcfunction
 # 
 #
 # Created by .
##

execute if block ~ ~-1 ~ sand run particle block sand ~ ~ ~ 0.5 0.25 0.5 0 15 force
execute if block ~ ~-1 ~ stone run particle block stone ~ ~ ~ 0.5 0.25 0.5 0 15 force
execute if block ~ ~-1 ~ sandstone run particle block sandstone ~ ~ ~ 0.5 0.25 0.5 0 15 force

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:5}}]}
tag @s remove down