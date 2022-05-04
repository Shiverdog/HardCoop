execute store result score carrying_souls hardcoop_temp run clear @s minecraft:player_head{SkullOwner:{Properties:{textures:[{Value:"hardcoop_soul_item"}]}}} 0
execute if score carrying_souls hardcoop_temp matches 1.. run effect give @s minecraft:glowing 2 0 true
execute at @s if score carrying_souls hardcoop_temp matches 1.. run particle minecraft:end_rod ~ ~100 ~ 0 50 0 0 400 force @a[distance=10..]
execute at @s if score carrying_souls hardcoop_temp matches 1.. run particle minecraft:end_rod ~ ~-100 ~ 0 50 0 0 400 force @a[distance=10..]