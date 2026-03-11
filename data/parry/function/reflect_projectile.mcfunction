execute store result score @s vel_x run data get entity @s Motion[0] 100
execute store result score @s vel_z run data get entity @s Motion[2] 100
scoreboard players set @s multiplier -2
scoreboard players operation @s vel_x *= @s multiplier
scoreboard players operation @s vel_z *= @s multiplier
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s vel_x
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s vel_z
data remove entity @s Owner
data remove entity @s OwnerUUID
title @a[distance=..20] actionbar [{"text":"PARRY!","color":"green","bold":true}]
playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 1
particle crit ~ ~ ~ 0.3 0.3 0.3 0.5 5
