tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:spider] run summon minecraft:cave_spider ~ ~ ~ {Tags:["VADS_Found"]}
teleport @s[type=minecraft:spider] ~ -512 ~

execute at @s[type=minecraft:zombie_villager] run summon minecraft:illusioner ~ ~ ~ {Tags:["VADS_Found"]}
teleport @s[type=minecraft:zombie_villager] ~ -512 ~