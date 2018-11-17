scoreboard players set @s VADS_CheckBiome 0
 
execute store success score @s VADS_CheckBiome run clone ~-4 ~-1 ~-4 ~4 ~1 ~4 ~-4 ~-1 ~-4 filtered minecraft:spawner force
tag @s[scores={VADS_CheckBiome=1..}] add VADS_FoundSpawner
tag @s[tag=VADS_FoundSpawner] remove VADS_ReplaceMob

execute as @s[tag=VADS_ReplaceMob,type=minecraft:zombie_pigman] run function mobs:spawn/biome/nether

execute as @s[tag=VADS_ReplaceMob] at @s positioned ~ 0 ~ as @s[distance=..20] run function mobs:spawn/biome/deep_cave
execute as @s[tag=VADS_ReplaceMob] at @s positioned ~ 0 ~ as @s[distance=..60] run function mobs:spawn/biome/cave

execute store success score @s VADS_CheckBiome run clone ~-4 ~-2 ~-4 ~4 ~2 ~4 ~-4 ~-2 ~-4 filtered minecraft:spruce_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/spruce

execute store success score @s VADS_CheckBiome run clone ~-4 ~-2 ~-4 ~4 ~2 ~4 ~-4 ~-2 ~-4 filtered minecraft:oak_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1}] run function mobs:spawn/biome/forest

execute store success score @s VADS_CheckBiome run clone ~-5 ~-2 ~-5 ~3 ~ ~3 ~-5 ~-5 ~-5 filtered minecraft:vine force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/swamp

execute store success score @s VADS_CheckBiome run clone ~-1 ~-2 ~-1 ~1 ~ ~1 ~-1 ~-2 ~-1 filtered minecraft:snow force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/snow

execute store success score @s VADS_CheckBiome run clone ~-1 ~-3 ~-1 ~1 ~-2 ~1 ~-1 ~-3 ~-1 filtered minecraft:sand force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/desert
execute store success score @s VADS_CheckBiome run clone ~-1 ~-3 ~-1 ~1 ~-2 ~1 ~-1 ~-3 ~-1 filtered minecraft:red_sand force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/red_desert

execute store success score @s VADS_CheckBiome run clone ~-5 ~-2 ~-5 ~4 ~4 ~4 ~-5 ~-2 ~-5 filtered minecraft:jungle_log force
execute as @s[tag=VADS_ReplaceMob,scores={VADS_CheckBiome=1..}] run function mobs:spawn/biome/jungle

execute as @s[tag=VADS_ReplaceMob] run function mobs:spawn/biome/plains

tag @s remove VADS_ReplaceMob
scoreboard players reset @e[scores={VADS_CheckBiome=0}] VADS_CheckBiome