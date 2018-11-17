particle minecraft:block minecraft:diamond_block ~ ~ ~ .1 .25 .1 .05 30 force @a
setblock ~ ~ ~ minecraft:air
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_slab"}}]
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:4,isMachine:1b,VADS_Machine:"vadditions:lazer.transanium",display:{Name:"{\"translate\":\"item.vadditions.lazer.transanium\"}"}}},Tags:["VADS_NoSummon"],Motion:[0.1d,0.2d,0.01d]}
teleport @s ~ -512 ~
kill @s[type=!minecraft:player]