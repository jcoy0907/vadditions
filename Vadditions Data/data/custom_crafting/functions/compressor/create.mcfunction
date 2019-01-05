#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",Count:1b},OnGround:1b},scores={VADS_SlotCount=2}]
#called by custom_crafting:clock

#summon entity
summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:11}}],Tags:["VADS_Entity","VADS_FireStand","VADS_Compressor","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_Compressor\""}
#kick players out of dropper inventory and add items to dropper
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.compressor\"}",Items:[{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:piston",Count:1b}]}
#audiovisuals
playsound minecraft:block.piston.extend voice @a[distance=..16] ~ ~ ~ 100 1.1 1
#kill item
kill @s[type=!minecraft:player]
