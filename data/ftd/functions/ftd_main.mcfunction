##
 # ftd_main.mcfunction
 # Runs creation the main stuff here
 #
 # Created by GuineaPvp
##

scoreboard objectives add rando dummy
scoreboard objectives add timer_ftd dummy
scoreboard objectives add health_ftd dummy

execute at @a as @e[type=!player,tag=!checked,distance=..50] run function ftd:biome_tag

execute at @a as @e[type=!player,tag=!checked,distance=..50] run function ftd:mobs/mob_randomize

execute as @e[tag=target] unless entity @e[tag=death_worm,type=armor_stand,distance=..7] run tag @s remove target

