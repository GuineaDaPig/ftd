tag @e[tag=!death_worm,type=!#ftd:do_not_target,distance=..6,sort=nearest,limit=1,nbt={OnGround:1b}] add target
teleport @s @e[tag=target,sort=nearest,limit=1,distance=..6]
scoreboard players set @s timer_ftd 0
tag @s remove notarget