#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}]
#called by vadditions:modules/entities/clock

#set block
setblock ~ ~ ~ minecraft:oak_sapling
#visuals
particle minecraft:happy_villager ~ ~.5 ~ .3 0 .3 0 10 normal @a
#kill item entity
kill @s[type=!minecraft:player]
