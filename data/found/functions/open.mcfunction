#Function by @JeffWooden_ | All rights reserved (c)
tellraw @s {"translate":"text.meteorite.found"}
execute as @s at @s as @e[tag=meteorChest,limit=1,sort=nearest] at @s run forceload remove ~-1 ~-1 ~1 ~1
execute as @s at @s as @e[tag=meteorChest,limit=1,sort=nearest] run kill @s