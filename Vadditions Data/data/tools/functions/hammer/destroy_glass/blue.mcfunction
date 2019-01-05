setblock ~ ~-1 ~ minecraft:air destroy
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:14,isCustomItem:1b,VADS_Item:"vadditions:glass_shard.blue",display:{Name:"{\"translate\":\"item.vadditions.shard.glass.blue\"}"}}}}
data merge entity @s {PickupDelay:10s}
