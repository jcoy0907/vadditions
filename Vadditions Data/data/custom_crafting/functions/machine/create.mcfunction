#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",Count:1b},OnGround:1b},scores={VADS_SlotCount=1}]
#called by custom_crafting:clock

#summon entity
summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:8}}],Tags:["VADS_Entity","VADS_FireStand","VADS_MachineCrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_MachineCrafter\""}
#kick players out of dropper inventory
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.machine\"}"}
#audiovisuals
playsound minecraft:block.anvil.use voice @a[distance=..16] ~ ~ ~ 100 1.5 1
#kill item
kill @s[type=!minecraft:player]
