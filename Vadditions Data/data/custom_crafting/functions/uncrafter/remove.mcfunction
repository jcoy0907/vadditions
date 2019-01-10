#@s - @e[tag=VADS_Uncrafter] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#replace items
gamerule doTileDrops false
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dispenser",Count:1b}},nbt=!{Thrower:{}}] run setblock ~ ~ ~ minecraft:dispenser{Items:[{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"translate\":\"item.minecraft.crafting_table.completely_fixed\"}"}}}],CustomName:"{\"translate\":\"text.vadditions.customcrafter.drop_items\"}"}
setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true
execute if entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dispenser",Count:1b}},nbt=!{Thrower:{}}] align xyz run summon minecraft:experience_bottle ~.5 ~ ~.5
#remove dispenser name
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}}}}] Item.tag.display
#kill crafter
kill @s[type=!minecraft:player]