tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:spider] run summon minecraft:cave_spider ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:spider] ~ -512 ~

#execute at @s[type=minecraft:skeleton] run function vadditions:modules/mobs/spawn/entity/test
#execute at @s[type=minecraft:witch] run function vadditions:modules/mobs/spawn/entity/test

execute at @s[type=minecraft:zombie] run summon minecraft:silverfish ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:zombie] ~ -512 ~