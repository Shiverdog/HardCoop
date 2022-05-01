execute as @a run function hardcoop:register_uuid
execute as @e[type=marker,tag=hardcoop_reinc_well] at @s run function hardcoop:check_for_revives
schedule function hardcoop:tick100 100t replace