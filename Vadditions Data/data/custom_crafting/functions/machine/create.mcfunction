summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:8s}}],Tags:["VADS_Entity","VADS_FireStand","VADS_MachineCrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_MachineCrafter\""}

setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.machine\"}"}

playsound minecraft:block.anvil.use voice @a[distance=..16] ~ ~ ~ 100 1.5 1

kill @s[type=!minecraft:player]