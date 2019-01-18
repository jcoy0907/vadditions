#@s - @e[type=minecraft:armor_stand,tag=!VADS_Entity]
#called by vadditions:modules/entities/clock

#particles
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["no particle"]}},OnGround:1b},distance=...5] run function vadditions:modules/entities/processes/armour_stand_modifications/particles/remove
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["flame"]}},OnGround:1b},distance=...5] run function vadditions:modules/entities/processes/armour_stand_modifications/particles/add_flame
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["end rod"]}},OnGround:1b},distance=...5] run function vadditions:modules/entities/processes/armour_stand_modifications/particles/add_end_rod
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["smoke"]}},OnGround:1b},distance=...5] run function vadditions:modules/entities/processes/armour_stand_modifications/particles/add_smoke

execute if entity @s[tag=VADS_ASM_Flame] run particle minecraft:flame ~ ~.25 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=VADS_ASM_EndRod] run particle minecraft:end_rod ~ ~.25 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=VADS_ASM_Smoke] run particle minecraft:smoke ~ ~.25 ~ 0 0 0 0 1 force @a
#small/large
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:1}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:0}
#turn/no turn
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["turn"]}},OnGround:1b},distance=...5] run tag @s add VADS_Turn
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["no turn"]}},OnGround:1b},distance=...5] run tag @s remove VADS_Turn
#advancement
execute if entity @s[tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose
execute if entity @s[tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose

execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}}},distance=...5] run tag @s add VADS_Pose
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}}},distance=...5] run tag @s add VADS_Pose
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["turn"]}}},distance=...5] run tag @s add VADS_Pose
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["no turn"]}}},distance=...5] run tag @s add VADS_Pose

execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}},distance=...5] unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"}},distance=...5] run tag @s remove VADS_Pose
