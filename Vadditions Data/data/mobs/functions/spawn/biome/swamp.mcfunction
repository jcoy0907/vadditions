tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:zombie] run summon minecraft:witch ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:zombie] ~ -512 ~