#Function by @JeffWooden_ | All rights reserved (c)
scoreboard objectives add dhcflpT dummy
scoreboard objectives add dhcflpTX dummy
scoreboard objectives add dhcflpTY dummy
scoreboard objectives add dhcflpTZ dummy
scoreboard players set max dhcflpT 10
execute store result score daytime dhcflpT run time query daytime
execute store result score players dhcflpT run list
execute if score daytime dhcflpT matches 14000 store result score spawn dhcflpT run list
execute if score spawn dhcflpT matches 1.. run function summon:create
execute as @e[tag=dhcflpT] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace #summon:void
execute as @e[tag=dhcflpT] at @s run particle smoke ~ ~2.5 ~ 0.25 0 0.25 0 10 force @a
execute as @e[tag=dhcflpT] at @s run particle flame ~ ~2.5 ~ 0.25 0.25 0.25 0.02 20 force @a
execute as @e[tag=dhcflpT,nbt={OnGround:1b}] run function summon:impact
execute as @e[tag=meteorChest] store result score @s dhcflpTX run data get entity @s Pos[0]
execute as @e[tag=meteorChest] store result score @s dhcflpTY run data get entity @s Pos[1]
execute as @e[tag=meteorChest] store result score @s dhcflpTZ run data get entity @s Pos[2]
execute if score daytime dhcflpT matches 1000..1010 as @e[tag=meteorChest] run function summon:destroy