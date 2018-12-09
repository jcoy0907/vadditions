#@s - @e[tag=VADS_BasicCrafter] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#replace items
gamerule doTileDrops false
execute if entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.basic\"}"}}}}] run setblock ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:crafting_table",Count:1b,Slot:0b,tag:{display:{Name:"{\"translate\":\"item.minecraft.crafting_table.slightly_damaged\"}"}}},{id:"minecraft:cobblestone",Count:4b,Slot:1b},{id:"minecraft:redstone",Count:1b,Slot:2b},{id:"minecraft:iron_ingot",Count:3b,Slot:3b}],CustomName:"{\"translate\":\"text.vadditions.customcrafter.drop_items\"}"}
setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
#remove dropper name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.basic\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]