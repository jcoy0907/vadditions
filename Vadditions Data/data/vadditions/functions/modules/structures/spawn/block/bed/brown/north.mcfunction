execute if block ~ ~ ~ minecraft:command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chain_command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:repeating_command_block run setblock ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:brown_bed[facing=south,occupied=false,part=head]
setblock ~ ~ ~-1 minecraft:brown_bed[facing=south,occupied=false,part=foot]