#@s - @e[tag=VADS_AdvancedCrafter] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#replace items
gamerule doTileDrops false
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run setblock ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:crafting_table",Count:2b,tag:{display:{Name:"{\"translate\":\"item.minecraft.crafting_table.slightly_damaged\"}"}},Slot:0b},{id:"minecraft:obsidian",Count:1b,Slot:1b},{id:"minecraft:diamond",Count:4b,Slot:2b},{id:"minecraft:iron_block",Count:1b,Slot:3b},{id:"minecraft:cobblestone",Count:4b,Slot:4b},{id:"minecraft:iron_ingot",Count:3b,Slot:5b},{id:"minecraft:redstone",Count:1b,Slot:6b}],CustomName:"{\"translate\":\"text.vadditions.custom_crafter.drop_items\"}"}
setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
#remove dropper name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.advanced\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]