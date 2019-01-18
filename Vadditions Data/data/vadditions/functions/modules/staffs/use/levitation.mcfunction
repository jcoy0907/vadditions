#@s - @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Staff:"vadditions:staff.levitation"}}}]
#called by vadditions:modules/staffs/holding

#audiovisuals
particle minecraft:poof ~ ~ ~ 2 0 0 0 100 normal
particle minecraft:poof ~ ~ ~ 0 0 2 0 100 normal
execute as @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.3"]}}}] at @s run particle minecraft:totem_of_undying ~ ~1 ~ .2 .5 .2 0 100 normal

playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 .5 1
playsound minecraft:entity.shulker.death voice @a[distance=..16] ~ ~ ~ 100 .6 1

summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,0.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.5d,1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,0.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.5d,-1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}

summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,-1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,-1.0d],Item:{id:"minecraft:shulker_shell",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}

#effects
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect clear @s minecraft:levitation
effect clear @s minecraft:slow_falling

effect give @s minecraft:slowness 2 4 true
effect give @s minecraft:blindness 2 0 true

effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.1"]}}}] minecraft:levitation 2 0
effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.1"]}}}] minecraft:slow_falling 3 0 true

effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.2"]}}}] minecraft:levitation 4 1
effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.2"]}}}] minecraft:slow_falling 7 0 true

effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.3"]}}}] minecraft:levitation 6 2
effect give @s[nbt={SelectedItem:{tag:{weaponAttributes:["levitation.3"]}}}] minecraft:slow_falling 10 0 true
