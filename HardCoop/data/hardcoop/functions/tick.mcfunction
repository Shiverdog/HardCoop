team join hardcoop_alive @a[team=!hardcoop_alive,team=!hardcoop_dead]
execute as @e[type=item] if entity @s[tag=hardcoop_soul] at @s run function hardcoop:soul
execute as @e[type=item] unless entity @s[tag=hardcoop_soul,tag=hardcoop_not_soul] if entity @s[nbt={Item:{id:"minecraft:player_head"}}] at @s run function hardcoop:soul
execute as @a[team=hardcoop_alive,scores={hardcoop_hasdied=1..}] run function hardcoop:cast_away
execute as @a[team=hardcoop_dead] at @s if entity @s[y=10,dy=-100] at @s run function hardcoop:cast_away
execute as @a[team=hardcoop_dead] at @s positioned 0 0 0 if entity @s[distance=500..] at @s run function hardcoop:cast_away