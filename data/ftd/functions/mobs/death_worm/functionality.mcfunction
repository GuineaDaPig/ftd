        #set itself into the ground
execute if block ~ ~-0.1 ~ air run teleport @s ~ ~-0.2 ~
execute unless block ~ ~0.5 ~ air run teleport @s ~ ~0.1 ~
        # if no player is around then be hidden
        # if there is an entity then attack
execute if entity @e[type=!#ftd:do_not_target,distance=..6,nbt={OnGround:1b}] run scoreboard players add @s timer_ftd 1
execute if score @s timer_ftd matches 20.. run function ftd:mobs/death_worm/bite

