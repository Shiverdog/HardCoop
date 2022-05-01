scoreboard objectives add hardcoop_temp dummy
scoreboard objectives add hardcoop_uuidcheck dummy
scoreboard objectives add hardcoop_uuid1 dummy
scoreboard objectives add hardcoop_uuid2 dummy
scoreboard objectives add hardcoop_uuid3 dummy
scoreboard objectives add hardcoop_uuid4 dummy
scoreboard objectives add hardcoop_deaths deathCount
scoreboard objectives add hardcoop_hasdied deathCount
scoreboard objectives add hardcoop_health health
scoreboard objectives setdisplay list hardcoop_health

team add hardcoop_alive
team add hardcoop_dead

team modify hardcoop_alive color green
team modify hardcoop_alive collisionRule pushOtherTeams
team modify hardcoop_alive deathMessageVisibility always
team modify hardcoop_alive nametagVisibility team modify hardcoop_alive nametagVisibility always
team modify hardcoop_alive seeFriendlyInvisibles false

team modify hardcoop_dead color gray
team modify hardcoop_dead collisionRule never
team modify hardcoop_dead deathMessageVisibility never
team modify hardcoop_dead nametagVisibility hideForOtherTeams
team modify hardcoop_dead seeFriendlyInvisibles true

schedule function hardcoop:tick30 30t replace
schedule function hardcoop:tick100 100t replace