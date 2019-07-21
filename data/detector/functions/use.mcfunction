#Function by @JeffWooden_ | All rights reserved (c)
execute store result score @s pntsnaT run data get entity @s SelectedItem.tag.Damage
execute as @s[gamemode=!creative] if entity @e[tag=meteorChest] run scoreboard players add @s pntsnaT 1
execute if entity @e[tag=meteorChest] as @s at @s run tellraw @s ["",{"translate":"block.minecraft.structure_void","color":"red"},{"text":": "},{"translate":"text.impact_coordinates","color":"white"},{"text":" "},{"score":{"name":"@e[tag=meteorChest,limit=1,sort=nearest]","objective":"dhcflpTX"}},{"text":" "},{"score":{"name":"@e[tag=meteorChest,limit=1,sort=nearest]","objective":"dhcflpTY"}},{"text":" "},{"score":{"name":"@e[tag=meteorChest,limit=1,sort=nearest]","objective":"dhcflpTZ"}}]
execute unless entity @e[tag=meteorChest] as @s at @s run playsound minecraft:block.redstone_torch.burnout ambient @s
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s pntsnaT
execute as @s[scores={pntsnaT=26..}] run replaceitem entity @s weapon.mainhand air
execute as @s[scores={pntsnaT=26..}] at @s run playsound minecraft:item.shield.break ambient @s