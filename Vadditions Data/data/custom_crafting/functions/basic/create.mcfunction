#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b},OnGround:1b}]
#called by custom_crafting:clock

#summon entity
summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:6s}}],Tags:["VADS_Entity","VADS_FireStand","VADS_BasicCrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_BasicCrafter\""}
#kick players out of dropper inventory
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.basic\"}",Items:[]}
#audiovisuals
playsound minecraft:block.beacon.activate voice @a[distance=..16] ~ ~ ~ 100 1.5 1
playsound minecraft:block.beacon.activate voice @a[distance=..16] ~ ~ ~ 100 .5 1
#advancements
advancement grant @a[distance=..5] only vadditions:custom_crafting/basic_crafter
#kill item
kill @s[type=!minecraft:player]
