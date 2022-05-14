scoreboard players set result hardcoop_temp 1
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] store success score result hardcoop_temp if entity @s[type=item,nbt={Item:{tag:{SkullOwner:{Properties:{textures:[{"Value":"hardcoop_soul_item"}]}}}}}]
# Actually the most disgusting command I've ever written
# 1 if it's a player head from the loottable, otherwise 0
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] if score result hardcoop_temp matches 1 run tag @s add hardcoop_soul
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] if score result hardcoop_temp matches 1 run tag @s add hardcoop_any_soul

# repeat for pure souls
scoreboard players set result hardcoop_temp 1
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] store success score result hardcoop_temp if entity @s[type=item,nbt={Item:{tag:{SkullOwner:{Properties:{textures:[{"Value":"hardcoop_pure_soul_item"}]}}}}}]
# Actually the most disgusting command I've ever written
# 1 if it's a player head from the loottable, otherwise 0
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] if score result hardcoop_temp matches 0 run tag @s add hardcoop_not_soul
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] if score result hardcoop_temp matches 1 run tag @s add hardcoop_pure_soul
execute unless entity @s[tag=hardcoop_any_soul] unless entity @s[tag=hardcoop_not_soul] if score result hardcoop_temp matches 1 run tag @s add hardcoop_any_soul

# prevent checking the nbt continually if we've already determined whether the head is a soul
execute if entity @s[tag=hardcoop_any_soul] run data merge entity @s {Health:32767s,Age:-32768s,Glowing:1b}
execute if entity @s[tag=hardcoop_any_soul] run particle minecraft:end_rod ~ ~ ~ 0 100 0 0 10 force @a