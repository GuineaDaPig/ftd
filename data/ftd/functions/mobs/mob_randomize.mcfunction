##
 # mob_randomize.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set 100000000 rando 100000000

execute store result score @s rando run data get entity @s UUID.[0]
scoreboard players operation @s rando /= 100000000 rando
tag @s add checked