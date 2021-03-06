#@s - arbitrary
#called arbitrarily

#set block
setblock ~ ~ ~ minecraft:spawner{RequiredPlayerRange:0s,SpawnData:{ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",tag:{Unbreakable:1,Damage:1s},Count:1b}],Pose:{RightArm:[30.0d,0.0d,0.0d],LeftArm:[30.0d,0.0d,0.0d]},id:"minecraft:armor_stand"}}
#ensure no spawning of armour stands
data merge block ~ ~ ~ {RequiredPlayerRange:0s}
#ensure of no overlapping
execute align xyz run kill @e[tag=VADS_OreEntity,dx=.5,dy=.5,dz=.5]
execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["VADS_Entity","VADS_OreEntity","VADS_OreTransanium","VADS_FoundMob"],Small:1b,Silent:1b,Marker:1b,CustomName:"{\"text\":\"vadditions:ores/transanium\"}",ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:1}}]}
#spawn ore entity
execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["VADS_Entity","VADS_OreEntity","VADS_OreTransanium","VADS_FoundMob"],Small:1b,Silent:1b,Marker:1b,CustomName:"{\"text\":\"vadditions:ores/transanium\"}",ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:1}}]}
