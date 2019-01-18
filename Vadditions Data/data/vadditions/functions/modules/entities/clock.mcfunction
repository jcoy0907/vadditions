#@s - console
#called by #vadditions:modules/entities/clock

#enderman support class (cred. gm4)
    #effect players and mobs near endermen
execute at @e[type=minecraft:enderman] run function vadditions:modules/entities/processes/enderman_support_class
#armour stand modifications
execute as @e[type=minecraft:armor_stand,tag=!VADS_Entity] at @s run function vadditions:modules/entities/processes/armour_stand_modifications/run
#firey arrows
execute at @e[type=minecraft:arrow,scores={VADS_Fire=1..},nbt={inGround:1b},tag=!VADS_FiredArrow] run setblock ~ ~ ~ minecraft:fire keep
tag @e[type=minecraft:arrow,scores={VADS_Fire=1..},nbt={inGround:1b},tag=!VADS_FiredArrow] add VADS_FiredArrow
#saplings plant themselves
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/oak
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/spruce
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/birch
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/jungle
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/acacia
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b},OnGround:1b},scores={VADS_Random=1..9}] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ #vadditions:holds/sapling unless block ~ ~ ~ #minecraft:saplings run function vadditions:modules/entities/processes/sapling_planting/dark_oak
#animal floor food
execute as @e[nbt={InLove:0}] at @s run function vadditions:modules/entities/processes/animal_floor_food/run
#firey fire charges
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"},OnGround:1b}] at @s unless entity @p[distance=..1.2] run function vadditions:modules/entities/effects/firey_fire_charges
