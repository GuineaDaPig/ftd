tag @s add notarget
            
#kill slime
teleport @e[tag=death_slime,type=slime,distance=..2] ~ -215 ~
            
#reset timer
scoreboard players set @s timer_ftd 0
                        
#particles
execute if block ~ ~-1 ~ sand run particle block sand ~ ~ ~ 2 0.2 2 0 1 force
execute if block ~ ~-1 ~ sandstone run particle block sandstone ~ ~ ~ 2 0.2 2 0 1 force
execute if block ~ ~-1 ~ dirt run particle block dirt ~ ~ ~ 2 0.2 2 0 1 force
execute if block ~ ~-1 ~ minecraft:grass_block run particle block dirt ~ ~ ~ 2 0.2 2 0 1 force