#Function by @JeffWooden_ | All rights reserved (c)
scoreboard players remove spawn dhcflpT 1
summon armor_stand 0 200 0 {Tags:["meteor.place"]}
spreadplayers 0 0 100 2000 false @e[tag=meteor.place]
execute as @e[tag=meteor.place] at @s run forceload add ~-1 ~-1 ~1 ~1
execute as @e[tag=meteor.place] at @s run tp @s ~ 200 ~
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score Rand dhcflpT run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUIDMost 0.0000000000000028306434
scoreboard players operation Rand dhcflpT %= max dhcflpT
kill @e[type=area_effect_cloud,tag=random]
execute as @e[tag=meteor.place] at @s run function summon:meteor
execute if score spawn dhcflpT matches 0 if score players dhcflpT matches 2.. run tellraw @a ["",{"text":"\uf000"},{"text":" ","color":"red"},{"score":{"name":"players","objective":"dhcflpT"},"bold":true},{"text":" "},{"translate":"text.impact_warning.many","color":"red"},{"translate":"block.minecraft.structure_void","bold":true},{"text":".","color":"red"}]
execute if score spawn dhcflpT matches 0 if score players dhcflpT matches ..1 run tellraw @a ["",{"text":"\uf000","color":"white"},{"text":" "},{"translate":"text.impact_warning.one","color":"red"},{"translate":"block.minecraft.structure_void","bold":true},{"text":".","color":"red"}]