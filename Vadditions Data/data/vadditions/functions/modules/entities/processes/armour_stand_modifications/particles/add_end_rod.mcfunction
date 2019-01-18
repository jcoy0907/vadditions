#@s - @e[type=minecraft:armor_stand,tag=!VADS_Entity] if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["end rod"]}},OnGround:1b},distance=...5]
#called by vadditions:modules/entities/processes/armour_stand_modifications/run

#add tags
tag @s add VADS_ASM_EndRod
#remove tags
tag @s remove VADS_ASM_Flame
tag @s remove VADS_ASM_Smoke
#merge nbt
data merge entity @s {Invisible:1,NoGravity:1,Marker:1}
