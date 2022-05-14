scoreboard players set well_consumed hardcoop_temp 0
execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=hardcoop_pure_soul,dx=2,dz=2,dy=3,sort=nearest,limit=1] at @s as @s[team=hardcoop_dead] run function hardcoop:internal/revive
execute if score well_consumed hardcoop_temp matches 1 run setblock ~ ~-1 ~ coal_block
execute if score well_consumed hardcoop_temp matches 1 run fill ~ ~ ~ ~ ~3 ~ air destroy
execute if score well_consumed hardcoop_temp matches 1 run kill @s