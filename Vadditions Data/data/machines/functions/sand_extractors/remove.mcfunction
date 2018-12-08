#@s - sand extractor unless block ~ ~.2 ~ #vadditions:holds/sand_extractor
#called by machines:tick
data merge entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:"{\"translate\":\"block.vadditions.sand_extractor\"}"}}}}] {Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:16,display:{Name:"{\"translate\":\"block.vadditions.sand_extractor\"}"},isMachine:1b,VADS_Machine:"vadditions:sand_extractor"}},Tags:["VADS_NoSummon"]}
kill @s[type=!minecraft:player]