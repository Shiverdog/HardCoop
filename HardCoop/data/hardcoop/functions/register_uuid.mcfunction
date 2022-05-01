execute unless score @s hardcoop_uuid1 = @s hardcoop_uuid1 run data modify storage hardcoop:temp uuid set from entity @s UUID
execute unless score @s hardcoop_uuid1 = @s hardcoop_uuid1 store result score @s hardcoop_uuid1 run data get storage hardcoop:temp uuid[0] 1
execute unless score @s hardcoop_uuid2 = @s hardcoop_uuid2 store result score @s hardcoop_uuid2 run data get storage hardcoop:temp uuid[1] 1
execute unless score @s hardcoop_uuid3 = @s hardcoop_uuid3 store result score @s hardcoop_uuid3 run data get storage hardcoop:temp uuid[2] 1
execute unless score @s hardcoop_uuid4 = @s hardcoop_uuid4 store result score @s hardcoop_uuid4 run data get storage hardcoop:temp uuid[3] 1