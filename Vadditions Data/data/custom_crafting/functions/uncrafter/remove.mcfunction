#particle minecraft:block minecraft:crafting_table ~ ~1 ~ .1 .25 .1 .05 30 normal @a
#particle minecraft:block minecraft:nether_portal ~ ~1 ~ .1 .25 .1 .05 30 normal @a
execute if entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"translate\":\"item.minecraft.crafting_table.completely_fixed\"}"}}}}
execute if entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}}}}] run summon minecraft:experience_bottle ~ ~5 ~
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}}}}] Item.tag.display
kill @s[type=!minecraft:player]