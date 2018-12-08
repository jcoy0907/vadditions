#@s - sand extractor if score @s VADS_Random3 matches 1..5 unless block ~ ~ ~ #vadditions:holds/sand_extractor[enabled=false] if block ~ ~1 ~ #minecraft:sand
#called by machines:tick
#check for loot
    #materials
execute if score @s VADS_Random matches 1..5 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:flint",Count:1b},PickupDelay:10s}
execute if score @s VADS_Random matches 6..10 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:bone",Count:1b},PickupDelay:10s}
    #blocks
execute if block ~ ~1.2 ~ minecraft:sand if score @s VADS_Random matches 80..100 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:sand",Count:1b},PickupDelay:10s}
execute if block ~ ~1.2 ~ minecraft:red_sand if score @s VADS_Random matches 80..100 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:red_sand",Count:1b},PickupDelay:10s}
    #minerals
execute if score @s VADS_Random matches 12 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:iron_ingot",Count:1b},PickupDelay:10s}
execute if score @s VADS_Random matches 13 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:gold_ingot",Count:1b},PickupDelay:10s}
execute if score @s VADS_Random matches 11 run summon minecraft:item ~ ~1.2 ~ {Item:{id:"minecraft:diamond",Count:1b},PickupDelay:10s}
#unless an item has been spawned, summon sand
execute positioned ~ ~1.2 ~ unless entity @e[type=minecraft:item,sort=nearest,limit=1,distance=...5] if block ~ ~ ~ minecraft:sand run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sand",Count:1b},PickupDelay:10s}
execute positioned ~ ~1.2 ~ unless entity @e[type=minecraft:item,sort=nearest,limit=1,distance=...5] if block ~ ~ ~ minecraft:red_sand run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_sand",Count:1b},PickupDelay:10s}
#remove sand
execute if block ~ ~1.2 ~ minecraft:sand run particle minecraft:block minecraft:sand ~ ~1.2 ~ 0 .25 0 0 30 normal @a
execute if block ~ ~1.2 ~ minecraft:red_sand run particle minecraft:block minecraft:red_sand ~ ~1.2 ~ 0 .25 0 0 30 normal @a
playsound minecraft:block.sand.break block @a[distance=..10] ~ ~1.2 ~ 100 1 1
setblock ~ ~1.2 ~ minecraft:air