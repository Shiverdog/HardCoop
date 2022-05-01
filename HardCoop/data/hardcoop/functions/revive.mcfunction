particle minecraft:large_smoke ~ ~1 ~ 0.8 0.8 0.8 0.1 500 normal @a
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 1
execute as @e[type=item,distance=..3] run kill @s
tp @s ~ ~ ~
spawnpoint @s ~ ~ ~
effect clear @s
clear @s
effect give @s instant_health 1 100
gamemode survival @s
scoreboard players set well_consumed hardcoop_temp 1