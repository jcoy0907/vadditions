summon minecraft:villager ~ ~ ~ {Profession:3,Career:2,CareerLevel:1}
execute if block ~ ~ ~ minecraft:command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chain_command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:repeating_command_block run setblock ~ ~ ~ minecraft:air