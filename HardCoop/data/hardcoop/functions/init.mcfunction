scoreboard objectives add hardcoop_temp dummy
scoreboard objectives add hardcoop_uuidcheck dummy
scoreboard objectives add hardcoop_uuid1 dummy
scoreboard objectives add hardcoop_uuid2 dummy
scoreboard objectives add hardcoop_uuid3 dummy
scoreboard objectives add hardcoop_uuid4 dummy
scoreboard objectives add hardcoop_deaths deathCount
scoreboard objectives add hardcoop_hasdied deathCount
schedule function hardcoop:tick30 30t replace
schedule function hardcoop:tick100 100t replace