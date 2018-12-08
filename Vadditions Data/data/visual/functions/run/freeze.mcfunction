particle minecraft:poof ~ ~ ~ 2 0 0 0 100 normal
particle minecraft:poof ~ ~ ~ 0 0 2 0 100 normal

particle minecraft:block minecraft:packed_ice ~4 ~1 ~ 0 1.5 0 0 30 normal
particle minecraft:block minecraft:packed_ice ~-4 ~1 ~ 0 1.5 0 0 30 normal
particle minecraft:block minecraft:packed_ice ~ ~1 ~4 0 1.5 0 0 30 normal
particle minecraft:block minecraft:packed_ice ~ ~1 ~-4 0 1.5 0 0 30 normal

playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound minecraft:entity.evoker_fangs.attack voice @a[distance=..16] ~ ~ ~ 2 0 1

summon minecraft:evoker_fangs ~4 ~ ~
summon minecraft:evoker_fangs ~-4 ~ ~
summon minecraft:evoker_fangs ~ ~ ~4
summon minecraft:evoker_fangs ~ ~ ~-4

summon minecraft:armor_stand ~ ~ ~ {Tags:["VADS_Entity","VADS_FireStand","VADS_FreezeStand"],Invisible:1,Small:1,Marker:1,NoGravity:1,CustomName:"{\"text\":\"FreezeAttackStand\"}"}
scoreboard players set @e[tag=VADS_FreezeStand,distance=..1] VADS_FreezeTimer 0