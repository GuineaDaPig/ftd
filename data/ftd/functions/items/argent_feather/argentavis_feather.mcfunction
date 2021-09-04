####
# Argentavis Feather: Gives slowfalling when held in the main or offhand
####
effect give @s slow_falling 1 1 true
execute at @s run particle minecraft:cloud ~ ~ ~ 1 0 1 0 1 force @s
execute at @s run particle minecraft:block lapis_block ~ ~ ~ 1 0 1 0 1 force @s

scoreboard players add @s durTimer_ftd 1
execute if score @s[tag=!removeDur] durTimer_ftd matches 96 run function ftd:items/argent_feather/durability