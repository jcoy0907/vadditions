#enderman support class (cred. gm4)
    #effect players and mobs near endermen
execute at @e[type=minecraft:enderman] at @e[type=minecraft:skeleton,distance=..10] run effect give @a[distance=..5,gamemode=!spectator,gamemode=!creative] minecraft:weakness 7 0
execute at @e[type=minecraft:enderman] at @e[type=minecraft:shulker,distance=..10] run effect give @a[distance=..5,gamemode=!spectator,gamemode=!creative] minecraft:blindness 3 9
execute at @e[type=minecraft:enderman] run effect give @e[distance=..10,type=minecraft:zombie] minecraft:speed 4 1
execute at @e[type=minecraft:enderman] run effect give @e[distance=..10,type=minecraft:creeper] minecraft:regeneration 4 0
execute at @e[type=minecraft:enderman] run effect give @e[distance=..10,type=minecraft:silverfish] minecraft:resistance 4 1
execute at @e[type=minecraft:enderman] run effect give @e[distance=..10,type=minecraft:spider] minecraft:jump_boost 4 1
execute at @e[type=minecraft:enderman] run effect give @e[distance=..10,type=minecraft:cave_spider] minecraft:jump_boost 4 1

#armour stand state modifications
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:1}
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:0}
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["{\"text\":\"small\"}"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:1}
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["{\"text\":\"large\"}"]}},OnGround:1b},distance=...5] run data merge entity @s {Small:0}

execute at @e[type=minecraft:armor_stand,tag=!VADS_Entity,tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose
execute at @e[type=minecraft:armor_stand,tag=!VADS_Entity,tag=!VADS_Pose] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"},OnGround:1b},distance=...5] run advancement grant @a[distance=..5] only vadditions:pose
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["small"]}}},distance=...5] run tag @s add VADS_Pose
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{pages:["large"]}}},distance=...5] run tag @s add VADS_Pose
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}},distance=...5] unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"}},distance=...5] run tag @s remove VADS_Pose

#firey arrows
execute at @e[type=minecraft:arrow,scores={VADS_Fire=1..},nbt={inGround:1b},tag=!VADS_FiredArrow] run setblock ~ ~ ~ minecraft:fire keep
tag @e[type=minecraft:arrow,scores={VADS_Fire=1..},nbt={inGround:1b},tag=!VADS_FiredArrow] add VADS_FiredArrow
    #saplings plant themselves
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/oak
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/spruce
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/birch
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/jungle
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/acacia
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function entities:processes/sapling_planting/dark_oak
    #animal floor food
        #carrots
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot"},OnGround:1b}] run particle minecraft:item minecraft:carrot ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:carrot"},OnGround:1b}]
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_carrot"}}] run effect give @s minecraft:regeneration 10 2
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_carrot"},OnGround:1b}] run particle minecraft:item minecraft:golden_carrot ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsCarrots] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_carrot"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_carrot"},OnGround:1b}]
        #potatoes
execute as @e[tag=VADS_EatsPotatoes] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:potato"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsPotatoes] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:potato"},OnGround:1b}] run particle minecraft:item minecraft:potato ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsPotatoes] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:potato"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:potato"},OnGround:1b}]
        #seeds
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat_seeds"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b}] run particle minecraft:item minecraft:wheat_seeds ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b}]
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b}] run particle minecraft:item minecraft:pumpkin_seeds ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b}]
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:melon_seeds"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b}] run particle minecraft:item minecraft:melon_seeds ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b}]
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:beetroot_seeds"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b}] run particle minecraft:item minecraft:beetroot_seeds ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsSeeds] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b}]
        #wheat
execute as @e[tag=VADS_EatsWheat] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat"}}] run effect give @s minecraft:regeneration 10 0
execute as @e[tag=VADS_EatsWheat] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat"},OnGround:1b}] run particle minecraft:item minecraft:wheat ^ ^ ^.5 .1 .1 .1 0 30 normal
execute as @e[tag=VADS_EatsWheat] at @s if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat"},OnGround:1b}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:wheat"},OnGround:1b}]
    #firey fire charges
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] unless entity @p[distance=..1.2] run particle minecraft:flame ~1 ~ ~ 1 1 1 .1 999 normal @a
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] unless entity @p[distance=..1.2] as @e[distance=..5] run data merge entity @s {Fire:100s}
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] unless entity @p[distance=..1.2] as @e[type=minecraft:creeper,distance=..5] run data merge entity @s {Fuse:20,ExplosionRadius:3.5}
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] unless entity @p[distance=..1.2] run setblock ~ ~ ~ minecraft:fire keep
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] unless entity @p[distance=..1.2] run playsound minecraft:item.firecharge.use voice @a[distance=..16] ~ ~ ~ 100 .9 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] at @s unless entity @p[distance=..1.2] run kill @s