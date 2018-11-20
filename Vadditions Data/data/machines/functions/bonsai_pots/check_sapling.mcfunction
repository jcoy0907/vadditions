#@s - bonsai pot if block ~ ~2 ~ minecraft:grass_block if block ~ ~3 ~ #minecraft:saplings
#called by machines:tick

#check for loot
    #stick
execute if score @s VADS_Random matches 1..20 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:stick",Count:1b},PickupDelay:10s}
    #saplings
execute if block ~ ~3 ~ minecraft:oak_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:oak_sapling",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:spruce_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:spruce_sapling",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:birch_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:birch_sapling",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:jungle_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:jungle_sapling",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:acacia_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:acacia_sapling",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:dark_oak_sapling if score @s VADS_Random matches 21..26 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:dark_oak_sapling",Count:1b},PickupDelay:10s}
    #logs
execute if block ~ ~3 ~ minecraft:oak_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:oak_log",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:spruce_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:spruce_log",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:birch_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:birch_log",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:jungle_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:jungle_log",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:acacia_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:acacia_log",Count:1b},PickupDelay:10s}
execute if block ~ ~3 ~ minecraft:dark_oak_sapling if score @s VADS_Random matches 27..40 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:dark_oak_log",Count:1b},PickupDelay:10s}
    #fruits
execute if block ~ ~3 ~ minecraft:oak_sapling if score @s VADS_Random matches 41..50 run summon minecraft:item ~ ~5 ~ {Item:{id:"minecraft:apple",Count:1b},PickupDelay:10s}