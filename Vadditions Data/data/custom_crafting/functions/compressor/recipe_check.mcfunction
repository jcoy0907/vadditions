#@s = custom crafter unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]}
#called by custom_crafting:clock

#cobblestone
execute if score @s VADS_SlotCount matches 3 if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:4b,id:"minecraft:cobblestone",Count:1b},{Slot:7b,id:"minecraft:piston",Count:1b}]} run function custom_crafting:compressor/recipes/cobblestone
#grass block
execute if score @s VADS_SlotCount matches 3 if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:4b,id:"minecraft:grass_block",Count:1b},{Slot:7b,id:"minecraft:piston",Count:1b}]} run function custom_crafting:compressor/recipes/grass_block
#gravel
execute if score @s VADS_SlotCount matches 3 if block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:4b,id:"minecraft:gravel",Count:1b},{Slot:7b,id:"minecraft:piston",Count:1b}]} run function custom_crafting:compressor/recipes/gravel
