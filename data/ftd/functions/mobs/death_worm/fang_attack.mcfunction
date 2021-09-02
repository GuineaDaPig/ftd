scoreboard players add @s timer_ftd 1
execute if score @s timer_ftd matches 10.. at @s as @e[type=!#ftd:do_not_target,nbt={OnGround:1b},distance=..1] run function ftd:mobs/death_worm/effect
