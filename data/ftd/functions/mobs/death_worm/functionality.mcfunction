        #set itself into the ground
execute if block ~ ~-0.1 ~ air run teleport @s ~ ~-0.2 ~
execute unless block ~ ~0.5 ~ air run teleport @s ~ ~0.1 ~
        # if no player is around then be hidden
execute unless entity @p[distance=..12] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute unless entity @p[distance=..12] run tag @s add down
        # if there is an entity then attack
execute as @s[tag=down] if entity @a[distance=..12] run function ftd:mobs/death_worm/pop_up 
execute if entity @e[type=!#ftd:do_not_target,distance=..8,nbt={OnGround:1b}] run scoreboard players add @s timer_ftd 1
execute if score @s timer_ftd matches 30.. run function ftd:mobs/death_worm/bite

effect give @s invisibility 15 10 true
