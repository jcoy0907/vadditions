tag @s remove VADS_ReplaceMob

execute at @s[type=minecraft:spider] run summon minecraft:cave_spider ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:spider] ~ -512 ~

execute at @s[type=minecraft:skeleton] run summon minecraft:silverfish ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:skeleton] ~ -512 ~

execute at @s[type=minecraft:zombie_villager] run summon minecraft:illusioner ~ ~ ~ {Tags:["VADS_FoundMob"]}
teleport @s[type=minecraft:zombie_villager] ~ -512 ~

execute at @s[type=minecraft:creeper,scores={VADS_Random=1..100}] if score @s VADS_Random matches 1..50 run setblock ~ ~ ~ minecraft:chest[waterlogged=true]{LootTable:"minecraft:chests/buried_treasure"}
execute at @s[type=minecraft:creeper,scores={VADS_Random=1..100}] if score @s VADS_Random matches 1..50 run setblock ~ ~1 ~ minecraft:bedrock
execute at @s[type=minecraft:creeper,scores={VADS_Random=1..100}] if score @s VADS_Random matches 1..50 run setblock ~ ~1 ~ minecraft:cave_air
execute at @s[type=minecraft:creeper,scores={VADS_Random=1..100}] if score @s VADS_Random matches 51..100 run setblock ~ ~ ~ minecraft:tnt[unstable=true]
teleport @s[type=minecraft:creeper,scores={VADS_Random=1..100}] ~ -512 ~