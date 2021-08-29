scoreboard players add @s[scores={timer_ftd=..25}] timer_ftd 1
execute if entity @s[scores={timer_ftd=0..25}] positioned ~ ~1 ~ run teleport @e[type=!#ftd:do_not_target,type=!minecraft:phantom,distance=..3,limit=1] ~ ~ ~
scoreboard players set @s[scores={timer_ftd=25}] timer_ftd -25