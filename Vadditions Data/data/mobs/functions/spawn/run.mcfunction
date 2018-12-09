#@s - @e[tag=VADS_ReplaceMob]
#called by mobs:spawn/check

#reset biome check
scoreboard players set @s VADS_CheckBiome 0
#cancel check if spawner nearby
execute store success score @s VADS_CheckBiome run clone ~-4 ~-1 ~-4 ~4 ~1 ~4 ~-4 ~-1 ~-4 filtered minecraft:spawner force
tag @s[scores={VADS_CheckBiome=1..}] add VADS_FoundSpawner
tag @s[tag=VADS_FoundSpawner] remove VADS_ReplaceMob

#nether check
execute as @s[tag=VADS_ReplaceMob,type=minecraft:zombie_pigman] run function mobs:spawn/biome/nether
#cave check
execute as @s[tag=VADS_ReplaceMob] at @s positioned ~ 0 ~ as @s[distance=..20] run function mobs:spawn/biome/deep_cave
execute as @s[tag=VADS_ReplaceMob] at @s positioned ~ 0 ~ as @s[distance=..60] run function mobs:spawn/biome/cave
#spruce forest check
execute store success score @s VADS_CheckBiome run clone ~-4 ~-2 ~-4 ~4 ~2 ~4 ~-4 ~-2 ~-4 filtered minecraft:spruce_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/spruce
#oak forest check
execute store success score @s VADS_CheckBiome run clone ~-4 ~-2 ~-4 ~4 ~2 ~4 ~-4 ~-2 ~-4 filtered minecraft:oak_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1}] run function mobs:spawn/biome/forest
#swamp check
execute store success score @s VADS_CheckBiome run clone ~-5 ~-2 ~-5 ~3 ~ ~3 ~-5 ~-5 ~-5 filtered minecraft:vine force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/swamp
#snowy biome check
execute store success score @s VADS_CheckBiome run clone ~-1 ~-2 ~-1 ~1 ~ ~1 ~-1 ~-2 ~-1 filtered minecraft:snow force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/snow
#desert/mesa check
execute store success score @s VADS_CheckBiome run clone ~-1 ~-3 ~-1 ~1 ~-2 ~1 ~-1 ~-3 ~-1 filtered minecraft:sand force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/desert
execute store success score @s VADS_CheckBiome run clone ~-1 ~-3 ~-1 ~1 ~-2 ~1 ~-1 ~-3 ~-1 filtered minecraft:red_sand force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/red_desert
#jungle check
execute store success score @s VADS_CheckBiome run clone ~-5 ~-2 ~-5 ~4 ~4 ~4 ~-5 ~-2 ~-5 filtered minecraft:jungle_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/jungle

#if no success, assume plains
execute as @s[tag=VADS_ReplaceMob] run function mobs:spawn/biome/plains

#reset tags and scores
tag @s remove VADS_ReplaceMob
scoreboard players reset @e[scores={VADS_CheckBiome=0}] VADS_CheckBiome