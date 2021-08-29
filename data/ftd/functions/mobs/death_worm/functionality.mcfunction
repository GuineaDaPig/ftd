        #set itself into the ground
execute if block ~ ~-0.1 ~ air run teleport @s ~ ~-0.2 ~
execute unless block ~ ~0.5 ~ air run teleport @s ~ ~0.1 ~
        # if no player is around then be hidden
execute unless entity @e[type=!#ftd:do_not_target,tag=!death_slime,distance=..6] run function ftd:mobs/death_worm/hidden
        # if there is an entity then attack
execute as @s[tag=notarget] if entity @e[type=!#ftd:do_not_target,tag=!death_slime,distance=..6,nbt={OnGround:1b}] run scoreboard players add @s[scores={timer_ftd=..50}] timer_ftd 1
       
#Health set
execute as @e[tag=death_slime,type=slime] store result score @s health_ftd run data get entity @s Health 1

execute as @e[tag=death_slime,type=slime] if entity @s[scores={health_ftd=..1}] run function ftd:mobs/death_worm/death

        #once 2.5 seconds pass...
execute if entity @s[scores={timer_ftd=50}] run function ftd:mobs/death_worm/bite
       
execute if entity @e[tag=target,distance=..2] run function ftd:mobs/death_worm/looks
