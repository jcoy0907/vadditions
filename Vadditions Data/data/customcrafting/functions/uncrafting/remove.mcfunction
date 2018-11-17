#particle minecraft:block minecraft:crafting_table ~ ~1 ~ .1 .25 .1 .05 30 force @a
#particle minecraft:block minecraft:nether_portal ~ ~1 ~ .1 .25 .1 .05 30 force @a
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}}}}] Item.tag.display
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"translate\":\"item.minecraft.crafting_table.completely_fixed\"}"}}}}
summon minecraft:experience_bottle ~ ~20 ~
kill @s[type=!minecraft:player]