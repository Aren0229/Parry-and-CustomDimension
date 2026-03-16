# Detect sword attacks (AttackCooldown resets to 0 when player attacks)
execute as @a run function parry:sword_attack

# Decrement parry timer and check for projectiles
execute as @a[scores={parry_timer=1..}] run scoreboard players remove @s parry_timer 1
execute as @a[scores={parry_timer=1..}] at @s run function parry:detect_projectile


