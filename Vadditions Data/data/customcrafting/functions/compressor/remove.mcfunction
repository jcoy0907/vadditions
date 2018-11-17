#particle minecraft:block minecraft:iron_block ~ ~1 ~ .1 .25 .1 .05 30 force @a
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.compressor\"}"}}}}] Item.tag.display
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
kill @s[type=!minecraft:player]