particle minecraft:block minecraft:ladder ~ ~1 ~ .1 .25 .1 .05 30 normal @a
setblock ~ ~ ~ minecraft:air
data merge entity @e[type=minecraft:item,distance=..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] {Item:{tag:{display:{Name:"{\"translate\":\"item.minecraft.iron_block.slightly_damaged\"}"}}}}
summon minecraft:item ~ ~.5 ~ {Item:{id:"minecraft:ladder",Count:1b}}
kill @s[type=!minecraft:player]