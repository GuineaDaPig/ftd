##
 # ftd_main.mcfunction
 # 
 #
 # Created by .
##

scoreboard objectives add rando dummy
scoreboard objectives add timer_ftd dummy
scoreboard objectives add health_ftd dummy

execute at @a as @e[type=!player,tag=!checked,distance=..50] run function ftd:mobs/mob_randomize