particle minecraft:poof ~ ~ ~ .5 .5 .5 .2 50 force
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 .5 1
playsound minecraft:entity.witch.ambient voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound minecraft:entity.witch.ambient voice @a[distance=..16] ~ ~ ~ 2 .5 1

summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,0.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.5d,1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,0.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.5d,-1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}

summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,-1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[-1.0d,0.5d,1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}
summon minecraft:item ~ ~ ~ {Motion:[1.0d,0.5d,-1.0d],Item:{id:"minecraft:rotten_flesh",Count:1b},PickupDelay:3000s,Tags:["VADS_Entity","VADS_VisualEntity"]}

effect clear @s minecraft:blindness
effect clear @s minecraft:slowness
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
effect clear @s minecraft:slow_falling

effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:slowness 1 0 true

effect give @s minecraft:invisibility 10 0
effect give @s minecraft:weakness 10 255 true
effect give @s minecraft:slow_falling 10 4 true