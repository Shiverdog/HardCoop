execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s run function hardcoop:soul
execute as @a[scores={hardcoop_hasdied=1..},gamemode=survival] run function hardcoop:cast_away