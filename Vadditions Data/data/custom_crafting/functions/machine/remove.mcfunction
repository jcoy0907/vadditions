#@s - @e[tag=VADS_MachineCrafter] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#replace items
gamerule doTileDrops false
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run setblock ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:iron_block",Count:8b,Slot:0b},{id:"minecraft:redstone",Count:1b,Slot:1b}],CustomName:"{\"translate\":\"text.vadditions.customcrafter.drop_items\"}"}
setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
#remove dropper name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.machine\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]