#@s - @e[type=minecraft:enderman]
#called by entities:clock

execute at @e[type=minecraft:skeleton,distance=..10] run effect give @a[distance=..5,gamemode=!spectator,gamemode=!creative] minecraft:weakness 7 0
execute at @e[type=minecraft:shulker,distance=..10] run effect give @a[distance=..5,gamemode=!spectator,gamemode=!creative] minecraft:blindness 3 9
effect give @e[type=minecraft:zombie,distance=..10] minecraft:speed 4 1
effect give @e[type=minecraft:creeper,distance=..10] minecraft:regeneration 4 0
effect give @e[type=minecraft:silverfish,distance=..10] minecraft:resistance 4 1
effect give @e[type=minecraft:spider,distance=..10] minecraft:jump_boost 4 1
effect give @e[type=minecraft:cave_spider,distance=..10] minecraft:jump_boost 4 1
