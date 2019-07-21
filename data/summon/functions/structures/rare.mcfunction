#Function by @JeffWooden_ | All rights reserved (c)
execute as @s at @s run setblock ~ ~-3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"_Supraconducteur",rotation:"NONE",posX:-4,mode:"LOAD",posY:-2,sizeX:11,posZ:-3,integrity:1.0f,showair:0b,name:"summon:rare",sizeY:5,sizeZ:10,showboundingbox:1b}
execute as @s at @s run setblock ~ ~-2 ~ redstone_block
execute as @s at @s run setblock ~ ~-3 ~ chest{LootTable:"summon:rare"}
execute as @s at @s run summon armor_stand ~ ~-3 ~ {Tags:["meteorChest","rare"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}