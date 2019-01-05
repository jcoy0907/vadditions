#@s -@e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:smeltry"}},OnGround:1b},tag=!VADS_NoSummon,scores={VADS_SmltryCnt=1}]
#called by custom_crafting:clock

#set block
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.smeltry\"}"} destroy
#summon entity
summon minecraft:armor_stand ~.5 ~.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:10}}],Tags:["VADS_Entity","VADS_FireStand","VADS_Smeltry","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_Smeltry\""}
#kill item
kill @s[type=!minecraft:player]
