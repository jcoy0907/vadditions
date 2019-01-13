#@s - @e[tag=VADS_BasicCrafter] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#replace items
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] run loot spawn ~ ~ ~ loot custom_crafting:basic/removal
#remove dropper name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.basic\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]