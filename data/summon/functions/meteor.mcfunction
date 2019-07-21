#Function by @JeffWooden_ | All rights reserved (c)
gamerule sendCommandFeedback false
schedule function summon:gamerule 5t
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["dhcflpT"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:magma_block"},Time:-24000,DropItem:0b}]}
execute as @s at @s run particle flash ~ ~ ~ 1 1 1 1 1 force @a
execute as @s at @s if score Rand dhcflpT matches 0..5 run tag @e[tag=dhcflpT,limit=1,sort=nearest] add normal
execute as @s at @s if score Rand dhcflpT matches 6..9 run tag @e[tag=dhcflpT,limit=1,sort=nearest] add rare
execute as @s at @s if score Rand dhcflpT matches 10 run tag @e[tag=dhcflpT,limit=1,sort=nearest] add legendary
kill @s[type=armor_stand]