#@s - bonsai pot unless block ~ ~ ~ #vadditions:holds_bonsai_pot
#called by machines:tick

#reset scores - fixes a bug
scoreboard players reset @s[type=!minecraft:player]
#change hopper to bonsai pot item
data merge entity @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:"{\"translate\":\"block.vadditions.bonsai_pot\"}"}}}}] {Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:12,display:{Name:"{\"translate\":\"block.vadditions.bonsai_pot\"}"},isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}},Tags:["VADS_NoSummon"]}
#kill entity
kill @s[type=!minecraft:player]
