scoreboard players set @s parry.clicks 0
execute if predicate parry:holding_sword if score @s parry.cooldown matches ..0 run function parry:execute_parry
