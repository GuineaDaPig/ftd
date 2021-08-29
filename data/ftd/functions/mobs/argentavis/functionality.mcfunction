# Make sure the phantom is not on fire
data modify entity @s Fire set value 0

# Store the rotation
execute store result entity @e[type=husk,tag=argent_pass,distance=..2,sort=nearest,limit=1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[type=husk,tag=argent_pass,distance=..2,sort=nearest,limit=1] Rotation[1] float 1.0 run data get entity @s Rotation[1] -1.0

# if there is no husk kill the bird
execute positioned ~ ~1 ~ unless entity @e[tag=argent_pass,type=husk,distance=..2] run kill @s
