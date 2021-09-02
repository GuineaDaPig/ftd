##
 # mob_main.mcfunction
 # 
 #
 # Created by GuineaPvp
##

execute as @e[tag=argent,type=phantom] at @s run function ftd:mobs/argentavis/functionality
execute as @e[tag=argent_pass,type=husk] at @s run function ftd:mobs/argentavis/passanger
execute as @e[tag=death_worm,type=wandering_trader] at @s run function ftd:mobs/death_worm/functionality
execute as @e[tag=death_worm_fangs,type=evoker_fangs] run function ftd:mobs/death_worm/fang_attack