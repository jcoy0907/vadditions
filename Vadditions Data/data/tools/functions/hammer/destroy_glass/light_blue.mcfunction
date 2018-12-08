setblock ~ ~-1 ~ minecraft:air destroy
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:6,isCustomItem:1b,VADS_Item:"vadditions:glass_shard.light_blue",display:{Name:"{\"translate\":\"item.vadditions.shard.glass.light_blue\"}"}}}}
data merge entity @s {PickupDelay:10s}
