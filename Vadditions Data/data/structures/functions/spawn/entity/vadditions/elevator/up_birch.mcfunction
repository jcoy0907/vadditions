setblock ~ ~ ~ minecraft:iron_block
setblock ~ ~1 ~ minecraft:birch_button[face=floor]
execute align xz run summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:ladder",Count:1b}],Tags:["VADS_Entity","VADS_FireStand","VADS_Elevator"],NoGravity:1,Small:1,Marker:1,Invisible:1}