team join hardcoop_alive @a[team=!hardcoop_alive,team=!hardcoop_dead]
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s run function hardcoop:soul
execute as @a[team=hardcoop_alive,scores={hardcoop_hasdied=1..}] run function hardcoop:cast_away
execute as @a[team=hardcoop_dead] at @s if entity @s[y=10,dy=-1000] at @s run function hardcoop:cast_away