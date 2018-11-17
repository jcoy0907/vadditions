#sky
execute unless block ~ 62 ~ minecraft:water unless block ~ 61 ~ minecraft:water unless block ~ 60 ~ minecraft:water unless block ~ 59 ~ minecraft:water unless block ~ 58 ~ minecraft:water unless block ~ 33 ~ minecraft:gravel if score IslandCheck.Slime VADS_Random matches 1..20 if block ~ 41 ~ #vadditions:structures/valid_spawn if block ~ 128 ~ #minecraft:air if blocks ~ 128 ~ ~1 118 ~1 ~-1 128 ~-1 all run function structures:spawn/sky/island/slime

#surface/ocean
execute if block ~ 69 ~ minecraft:snow if block ~ 25 ~ #vadditions:structures/valid_spawn run function structures:spawn/surface/house
execute if block ~ 70 ~ minecraft:snow if block ~ 25 ~ #vadditions:structures/valid_spawn run function structures:spawn/surface/castle
execute if block ~ 62 ~ minecraft:water if block ~ 61 ~ minecraft:water if block ~ 60 ~ minecraft:water if block ~ 59 ~ minecraft:water if block ~ 58 ~ minecraft:water if block ~ 33 ~ minecraft:gravel run function structures:spawn/ocean/ship

#ores
    #transanium
execute if block ~ 41 ~ #vadditions:structures/valid_spawn if block ~ 40 ~ #vadditions:structures/valid_spawn run setblock ~ 42 ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:ores/transanium"} replace
execute if block ~ 41 ~ #vadditions:structures/valid_spawn if block ~ 40 ~ #vadditions:structures/valid_spawn run setblock ~ 43 ~ redstone_block replace

execute if block ~ 31 ~ #vadditions:structures/valid_spawn if block ~ 30 ~ #vadditions:structures/valid_spawn run setblock ~ 32 ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:ores/transanium"} replace
execute if block ~ 31 ~ #vadditions:structures/valid_spawn if block ~ 30 ~ #vadditions:structures/valid_spawn run setblock ~ 33 ~ redstone_block replace

#dungeons
execute if block ~ 68 ~ minecraft:dark_oak_log if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 15 ~ #vadditions:structures/dungeons/means_mansion run setblock ~ 15 ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:structures/dungeons/underground_mansion"} replace
execute if block ~ 68 ~ minecraft:dark_oak_log if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 15 ~ #vadditions:structures/dungeons/means_mansion run setblock ~ 16 ~ minecraft:redstone_block replace

execute if block ~ 70 ~ minecraft:snow if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 25 ~ #vadditions:structures/dungeons/means_dungeon run setblock ~ 25 ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:structures/dungeons/snow/7x7"} replace
execute if block ~ 70 ~ minecraft:snow if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 25 ~ #vadditions:structures/dungeons/means_dungeon run setblock ~ 26 ~ minecraft:redstone_block replace

execute if block ~ 69 ~ minecraft:snow if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 25 ~ #vadditions:structures/dungeons/means_dungeon run setblock ~ 15 ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:structures/dungeons/snow/5x5"} replace
execute if block ~ 69 ~ minecraft:snow if block ~ 20 ~ #vadditions:structures/valid_spawn unless block ~ 25 ~ #vadditions:structures/dungeons/means_dungeon run setblock ~ 16 ~ minecraft:redstone_block replace

setblock ~ ~ ~ minecraft:bedrock
kill @s[type=!minecraft:player]