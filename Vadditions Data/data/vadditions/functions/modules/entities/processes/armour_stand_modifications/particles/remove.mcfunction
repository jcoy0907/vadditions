#@s - @e[type=minecraft:armor_stand,tag=!VADS_Entity] if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["no particle"]}},OnGround:1b},distance=...5]
#called by vadditions:modules/entities/processes/armour_stand_modifications/run

#remove tags
tag @s remove VADS_ASM_Flame
tag @s remove VADS_ASM_EndRod
tag @s remove VADS_ASM_Smoke
#remove nbt
data remove entity @s Invisible
data remove entity @s NoGravity
data remove entity @s Marker
#visuals
particle minecraft:barrier ~ ~.25 ~ 0 0 0 0 1 force @a
