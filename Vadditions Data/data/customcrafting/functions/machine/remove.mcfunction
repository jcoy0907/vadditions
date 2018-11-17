#particle minecraft:block minecraft:iron_block ~ ~1 ~ .1 .25 .1 .05 30 force @a
data remove entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{display:{Name:"{\"translate\":\"block.vadditions.customcrafter.machine\"}"}}}}] Item.tag.display
summon minecraft:area_effect_cloud ~ ~.5 ~ {Passengers:[{id:"minecraft:item",Item:{id:"minecraft:iron_block",Count:8b}},{id:"minecraft:item",Item:{id:"minecraft:redstone",Count:1b}}]}
kill @s[type=!minecraft:player]