execute as @a run function hardcoop:register_uuid
execute as @e[type=marker,tag=hardcoop_reinc_well] at @s run function hardcoop:check_for_revives
execute as @a[team=hardcoop_dead] run function hardcoop:dead_effects
schedule function hardcoop:tick100 100t replace
execute in hardcoop:the_null as @e[type=item,distance=0..] run kill @s