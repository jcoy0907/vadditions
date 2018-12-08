tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:zombie] run summon minecraft:husk ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:zombie] ~ -512 ~

execute at @s[type=minecraft:skeleton] run summon minecraft:silverfish ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:skeleton] ~ -512 ~