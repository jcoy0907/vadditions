execute as @s[tag=VADS_SpawnRoom-UndMans_3x3] run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:modules/structures/rooms/underground_mansion/3x3"} replace
execute as @s[tag=VADS_SpawnRoom-UndMans_5x9] run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:modules/structures/rooms/underground_mansion/5x9"} replace
execute as @s[tag=VADS_SpawnRoom-UndMans_5x9_north] run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:modules/structures/rooms/underground_mansion/5x9_north",mirror:"LEFT_RIGHT"} replace
execute as @s[tag=VADS_SpawnRoom-UndMans_5x9_north] run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",posY:0,posZ:0,name:"vadditions:modules/structures/rooms/underground_mansion/5x9_north",mirror:"LEFT_RIGHT"} replace

setblock ~ ~1 ~ minecraft:redstone_block
execute if block ~ ~ ~ minecraft:redstone_block run setblock ~ ~1 ~ minecraft:air
kill @s[type=!minecraft:player]