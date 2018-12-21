#@s - @e[type=minecraft:armor_stand,tag=!VADS_Entity]
#called by entities:clock

#small/large
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:1}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:0}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["{\"text\":\"small\"}"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:1}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["{\"text\":\"large\"}"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:0}
#advancement
execute if entity @s[tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose
execute if entity @s[tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose

execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}}},distance=...5] run tag @s add VADS_Pose
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}}},distance=...5] run tag @s add VADS_Pose

execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}},distance=...5] unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"}},distance=...5] run tag @s remove VADS_Pose
