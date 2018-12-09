setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.smeltry\"}"} destroy

summon minecraft:armor_stand ~.5 ~.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:10s}}],Tags:["VADS_Entity","VADS_FireStand","VADS_Smeltry","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_Smeltry\""}

kill @s[type=!minecraft:player]