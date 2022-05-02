scoreboard players set well_consumed hardcoop_temp 0
execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=hardcoop_soul,dx=2,dz=2,dy=3,sort=nearest,limit=1] run data modify storage hardcoop:temp soul set from entity @s Item.tag.SkullOwner.Id
execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=hardcoop_soul,dx=2,dz=2,dy=3,sort=nearest,limit=1] at @s as @a[team=hardcoop_dead] run function hardcoop:compare_uuid
execute if score well_consumed hardcoop_temp matches 1 run setblock ~ ~-1 ~ coal_block
execute if score well_consumed hardcoop_temp matches 1 run fill ~ ~ ~ ~ ~3 ~ air destroy
execute if score well_consumed hardcoop_temp matches 1 run kill @s