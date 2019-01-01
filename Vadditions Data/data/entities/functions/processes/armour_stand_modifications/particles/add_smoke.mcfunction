#@s - @e[type=minecraft:armor_stand,tag=!VADS_Entity] if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["smoke"]}},OnGround:1b},distance=...5]
#called by entities:processes/armour_stand_modifications/run

#add tags
tag @s add VADS_ASM_Smoke
#remove tags
tag @s remove VADS_ASM_EndRod
tag @s remove VADS_ASM_Flame
#merge nbt
data merge entity @s {Invisible:1,NoGravity:1,Marker:1}
