#@s - @e[tag=VADS_Smeltry] unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up]
#called by custom_crafting:tick

#change dropper to smeltery
data merge entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dropper",Count:1b}},nbt=!{Thrower:{}}] {Item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:10,isMachine:1b,VADS_Machine:"vadditions:smeltry",display:{Name:"{\"translate\":\"item.vadditions.smeltry\"}"}}},Tags:["VADS_NoSummon"]}
#kill crafter
kill @s[type=!minecraft:player]