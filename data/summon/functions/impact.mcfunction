#Function by @JeffWooden_ | All rights reserved (c)
execute as @s[tag=normal] run function summon:structures/normal
execute as @s[tag=rare] run function summon:structures/rare
execute as @s[tag=legendary] run function summon:structures/legendary
execute as @s at @s run kill @e[type=falling_block,limit=1,sort=nearest]
kill @s[type=armor_stand]