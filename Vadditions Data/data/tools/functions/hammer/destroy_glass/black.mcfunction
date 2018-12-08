setblock ~ ~-1 ~ minecraft:air destroy
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:18,isCustomItem:1b,VADS_Item:"vadditions:glass_shard.black",display:{Name:"{\"translate\":\"item.vadditions.shard.glass.black\"}"}}}}
data merge entity @s {PickupDelay:10s}
