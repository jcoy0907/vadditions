setblock ~ ~-1 ~ minecraft:air destroy
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:4,isCustomItem:1b,VADS_Item:"vadditions:glass_shard.orange",display:{Name:"{\"translate\":\"item.vadditions.shard.glass.orange\"}"}}}}
give @p minecraft:golden_axe{isTool:1b,VADS_Tool:"vadditions:hammer",display:{Name:"{\"translate\":\"item.vadditions.tool.hammer\"}"}}
kill @s[type=!minecraft:player]