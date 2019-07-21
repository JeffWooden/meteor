#Function by @JeffWooden_ | All rights reserved (c)
execute as @s at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"_Supraconducteur",rotation:"NONE",posX:-4,mode:"LOAD",posY:-4,sizeX:8,posZ:-4,integrity:1.0f,showair:0b,name:"summon:normal",sizeY:5,sizeZ:8,showboundingbox:1b}
execute as @s at @s run setblock ~ ~-2 ~ redstone_block
execute as @s at @s run setblock ~ ~-2 ~ chest{LootTable:"summon:normal"}
execute as @s at @s run summon armor_stand ~ ~-2 ~ {Tags:["meteorChest","normal"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}