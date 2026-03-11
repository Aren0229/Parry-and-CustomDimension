execute as @a[scores={parry.clicks=1..}] run function parry:player_parry
execute as @a[scores={parry.window=1..}] run function parry:parry_window_tick
scoreboard players remove @a[scores={parry.cooldown=1..}] parry.cooldown 1
scoreboard players remove @a[scores={parry.window=1..}] parry.window 1
