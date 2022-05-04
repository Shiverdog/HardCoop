execute at @e[type=marker,tag=hardcoop_reinc_well] run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0 1 normal @a
execute as @a[team=hardcoop_alive] at @s run function hardcoop:internal/carrying_soul
schedule function hardcoop:internal/tick30 30t replace