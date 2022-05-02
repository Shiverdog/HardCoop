scoreboard players set uuidmatches hardcoop_temp 0
execute store result score uuid hardcoop_temp run data get storage hardcoop:temp soul[0]
execute if score @s hardcoop_uuid1 = uuid hardcoop_temp run scoreboard players add uuidmatches hardcoop_temp 1
execute store result score uuid hardcoop_temp run data get storage hardcoop:temp soul[1]
execute if score @s hardcoop_uuid2 = uuid hardcoop_temp run scoreboard players add uuidmatches hardcoop_temp 1
execute store result score uuid hardcoop_temp run data get storage hardcoop:temp soul[2]
execute if score @s hardcoop_uuid3 = uuid hardcoop_temp run scoreboard players add uuidmatches hardcoop_temp 1
execute store result score uuid hardcoop_temp run data get storage hardcoop:temp soul[3]
execute if score @s hardcoop_uuid4 = uuid hardcoop_temp run scoreboard players add uuidmatches hardcoop_temp 1
execute if score uuidmatches hardcoop_temp matches 4 run function hardcoop:internal/revive