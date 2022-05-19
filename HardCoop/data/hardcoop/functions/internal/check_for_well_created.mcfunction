scoreboard players set well_made hardcoop_temp 1
# Conditions (no soul well nearby, on shroomlights)
execute if score well_made hardcoop_temp matches 1 unless block ~ ~-1 ~ minecraft:shroomlight run scoreboard players set well_made hardcoop_temp 0
execute if score well_made hardcoop_temp matches 1 positioned ~-3.5 ~-1 ~-3.5 if entity @e[tag=hardcoop_reinc_well,dx=6,dz=6,dy=3] run scoreboard players set well_made hardcoop_temp 0
# Create well marker
execute if score well_made hardcoop_temp matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:[hardcoop_reinc_well]}
# FX
execute if score well_made hardcoop_temp matches 1 run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 100 1
execute if score well_made hardcoop_temp matches 1 run playsound minecraft:item.totem.use player @a ~ ~ ~ 100 0.7
execute if score well_made hardcoop_temp matches 1 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
execute if score well_made hardcoop_temp matches 1 run particle minecraft:soul ~ ~1 ~ 0.2 0.2 0.2 0.25 50 normal @a
execute if score well_made hardcoop_temp matches 1 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.25 50 normal @a
# Kill the pure soul
execute if score well_made hardcoop_temp matches 1 run kill @s