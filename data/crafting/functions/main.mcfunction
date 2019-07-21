#Function by @JeffWooden_ | All rights reserved (c)
scoreboard objectives add craftT minecraft.crafted:minecraft.structure_void
execute as @a unless score @s craftT matches 0.. run scoreboard players set @s craftT 0
recipe give @a crafting:detector

execute as @a[scores={craftT=1..}] run give @s minecraft:carrot_on_a_stick{Damage:0b,pntsnaT:1b,CustomModelData:666,display:{Name:'{"text":"Détecteur de météores","italic":false,"color":"aqua"}'}}
execute as @a[scores={craftT=1..}] run clear @s structure_void 1
scoreboard players remove @a[scores={craftT=1..}] craftT 1

execute as @a[nbt={SelectedItem:{id:"minecraft:structure_void"}},scores={craftT=..0}] unless data entity @s SelectedItem.tag run replaceitem entity @s weapon.mainhand structure_void{display:{Name:'{"translate":"block.minecraft.structure_void.exact","italic":false}'},CustomModelData:666}