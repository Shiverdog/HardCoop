execute as @a run function hardcoop:internal/register_uuid
execute as @e[tag=hardcoop_reinc_well] at @s run function hardcoop:internal/check_for_revives
execute as @e[tag=hardcoop_reinc_well] at @s run function hardcoop:internal/check_for_pure_revives
execute as @e[tag=hardcoop_pure_soul] at @s run function hardcoop:internal/check_for_well_created
execute as @a[team=hardcoop_dead] run function hardcoop:internal/dead_effects
schedule function hardcoop:internal/tick100 100t replace
execute in hardcoop:the_null as @e[type=item,distance=0..] run kill @s