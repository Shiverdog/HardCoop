team join hardcoop_alive @a[team=!hardcoop_alive,team=!hardcoop_dead]
execute as @e[type=item] if entity @s[tag=hardcoop_soul] at @s run function hardcoop:internal/soul
execute as @e[type=item] unless entity @s[tag=hardcoop_soul,tag=hardcoop_not_soul] if entity @s[nbt={Item:{id:"minecraft:player_head"}}] at @s run function hardcoop:internal/soul
execute as @a[team=hardcoop_alive,scores={hardcoop_hasdied=1..}] run function hardcoop:internal/cast_away
execute as @a[team=hardcoop_dead] at @s if entity @s[y=10,dy=-100] at @s run function hardcoop:internal/cast_away
execute as @a[team=hardcoop_dead] at @s positioned 0 0 0 if entity @s[distance=500..] at @s run function hardcoop:internal/cast_away
tellraw @a[scores={hardcoop=1..}] ["\n",{"text":"Hardcore Cooperative datapack version 1.0 by shiverdog","color":"#FF4271","clickEvent":{"action":"open_url","value":""}},"\n","Pages: ",{"text":"[GitHub] ","color":"light_purple","clickEvent":{"action":"open_url","value":"https://github.com/Shiverdog/HardCoop"},"hoverEvent":{"action":"show_text","contents":[{"text":"https://github.com/Shiverdog/HardCoop","color":"green"}]}},{"text":"[CurseForge]","color":"#FA7000","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/texture-packs/hardcore-cooperative"},"hoverEvent":{"action":"show_text","contents":[{"text":"https://www.curseforge.com/minecraft/texture-packs/hardcore-cooperative","color":"green"}]}},"\n"]
scoreboard players set @a[scores={hardcoop=1..}] hardcoop 0
scoreboard players enable @a hardcoop