#@s - transanium lazer with no supporting block
#called by machines:tick

#visuals
particle minecraft:block minecraft:diamond_block ~ ~ ~ .1 .25 .1 .05 30 normal @a
#remove visual entities
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_slab"}}]
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}]
#ensure block is removed
setblock ~ ~ ~ minecraft:air
#reimburse items
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:4,isMachine:1b,VADS_Machine:"vadditions:lazer.transanium",display:{Name:"{\"translate\":\"item.vadditions.lazer.transanium\"}"}}},Tags:["VADS_NoSummon"],Motion:[0.1d,0.2d,0.01d]}
#remove guardian
teleport @s[type=minecraft:guardian] ~ -512 ~
kill @s[type=!minecraft:player]