#Function by @JeffWooden_ | All rights reserved (c)
scoreboard objectives add pntsnaT dummy
scoreboard objectives add use_pntsnaT minecraft.used:minecraft.carrot_on_a_stick
execute as @a[scores={use_pntsnaT=1..},nbt={SelectedItem:{tag:{pntsnaT:1b}}}] run function detector:use
scoreboard players set @a[scores={use_pntsnaT=1..}] use_pntsnaT 0