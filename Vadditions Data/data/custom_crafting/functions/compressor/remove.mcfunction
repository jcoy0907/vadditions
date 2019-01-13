#@s - @e[tag=VADS_Compressor] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#kill items dropped by block if no dropper drops
execute unless entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",Count:1b}},sort=nearest,limit=1,distance=..1]
execute unless entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:piston",Count:1b}},sort=nearest,limit=1,distance=..1]
#replace items
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run loot spawn ~ ~ ~ loot custom_crafting:compressor/removal
#remove dropper name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.compressor\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]