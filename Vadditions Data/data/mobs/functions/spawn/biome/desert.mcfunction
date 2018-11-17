tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:husk] run summon minecraft:husk ~ ~ ~ {Tags:["VADS_Found"]}
teleport @s[type=minecraft:husk] ~ -512 ~

execute at @s[type=minecraft:skeleton] run summon minecraft:silverfish ~ ~ ~ {Tags:["VADS_Found"]}
teleport @s[type=minecraft:zombie] ~ -512 ~