# HardCoop
shiverdog (aka FatTuesday)'s Hardcore Co-Op Datapack

## Features
### The Null
When a player dies, they will be forced into Adventure mode and sent into the Null. The Null is a dimension where players can't progress through the game in any way, and the only way to leave is by being reincarnated by another player.
| ![A section of the Null](https://raw.githubusercontent.com/Shiverdog/HardCoop/main/renders/the_null.png) | 
|:--:| 
| *A section of the Null* |

### New structure: Reincarnation Well
Identified by a skeleton head on a tall pike, Reincarnation Wells provide opportunities to revive your fallen friends. Though very rare, Reincarnation Wells can be found in many biomes throughout the nether and overworld.
| ![A mossy reincarnation well](https://raw.githubusercontent.com/Shiverdog/HardCoop/main/renders/mossy.png) | 
|:--:| 
| *A mossy reincarnation well. Note that these normally have skeleton skulls on the pikes, but the rendering mod doesn't render block entities.* |

### Souls
Whenever a player dies with this datapack installed, they will drop a Soul. A Soul has the appearance of the head of the player it belongs to. Player Souls are indestructible.
When thrown into a Reincarnation Well, and if the player who the soul belongs to is online, they will materialize in place of the Soul. In doing this, the Well that is used will become exhausted and can never be used again.
## Technical Details
### Reincarnation Wells
Reincarnation Wells generate with a marker entity with the tag `hardcoop_reinc_well` placed 1 block above the center. In the default wells, this is a shroomlight, and it is recommended but not required to be consistent with that. To create a reincarnation well, activate a command block with the command `/summon marker ~ ~ ~ {Tags:[hardcoop_reinc_well]}` above the center of the well, ideally a shroomlight. This marker entity is responsible for spawning the soul particles, allowing reincarnation of players, and setting the center block to `coal_block` after reincarnation.
| ![An exhausted reincarnation well](https://github.com/Shiverdog/HardCoop/blob/main/renders/exhausted.png) | 
|:--:| 
| *An exhausted reincarnation well.* |
### Player Souls
The player heads dropped from the loot table are hereby referred to as 'player souls'. Unlike normal player heads, player souls have a special tag which gives them their traits. Player heads given by other datapacks are not player souls, and will not behave like them. Player souls glow, emit end rod particles in a large column, and are indestructible except by `/kill`. Player souls that fall into the void are as good as lost.
### The Null
Players in the Null are invincible. The Null is a series of floating grass islands in which mobs can't spawn, and players cannot interact with the world. If a player falls into the void of the Null, or gets more than 500 blocks from the center, they will be shunted back to the center. This helps prevent generating useless chunks. Players in the Null are given an elytra to traverse the Null. The "Sky's the Limit" advancement has been modified to not be given to dead players for this purpose. Items in the Null are deleted every 100 ticks.
