playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 1 1
execute in hardcoop:the_null run tp @s 8 4 8 
execute in hardcoop:the_null run spawnpoint @s 8 4 8 
execute in hardcoop:the_null positioned 0 4 0 run spreadplayers ~ ~ 100 1 false @s
gamemode adventure @s
team join hardcoop_dead @s
clear @s
give @s minecraft:elytra{Unbreakable:1b}
effect clear @s
effect give @s minecraft:blindness 1 1 true
effect give @s minecraft:slow_falling 1 1 true
function hardcoop:dead_effects