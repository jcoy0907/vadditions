summon minecraft:villager ~ ~ ~ {VillagerData:{profession:"minecraft:fisherman",level:1},DeathLootTable:"vadditions:entities/villager/fisherman"}
execute if block ~ ~ ~ minecraft:command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chain_command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:repeating_command_block run setblock ~ ~ ~ minecraft:air
