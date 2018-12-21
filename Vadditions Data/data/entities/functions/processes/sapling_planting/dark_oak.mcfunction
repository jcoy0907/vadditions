#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}]
#called by entities:clock

#set block
setblock ~ ~ ~ minecraft:dark_oak_sapling
#visuals
particle minecraft:happy_villager ~ ~.5 ~ .3 0 .3 0 10 normal @a
#kill item entity
kill @s[type=!minecraft:player]
