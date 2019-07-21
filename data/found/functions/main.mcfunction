#Function by @JeffWooden_ | All rights reserved (c)
scoreboard objectives add rgwgryT minecraft.custom:minecraft.open_chest
execute as @a[scores={rgwgryT=1..}] at @s if entity @e[tag=meteorChest,limit=1,distance=..6] run function found:open
scoreboard players set @a[scores={rgwgryT=1..}] rgwgryT 0