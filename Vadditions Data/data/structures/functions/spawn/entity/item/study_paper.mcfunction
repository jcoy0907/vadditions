summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:paper",Count:1,tag:{display:{Name:"{\"translate\":\"entity.vadditions.item.study_paper\"}"}}},Age:-32767,CustomName:"{\"translate\":\"entity.vadditions.item.study_paper\"}",CustomNameVisible:1}
execute if block ~ ~ ~ minecraft:command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chain_command_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:repeating_command_block run setblock ~ ~ ~ minecraft:air