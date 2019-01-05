setblock ~ ~-1 ~ minecraft:air destroy
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:10,isCustomItem:1b,VADS_Item:"vadditions:glass_shard.dark_gray",display:{Name:"{\"translate\":\"item.vadditions.shard.glass.dark_gray\"}"}}}}
data merge entity @s {PickupDelay:10s}
