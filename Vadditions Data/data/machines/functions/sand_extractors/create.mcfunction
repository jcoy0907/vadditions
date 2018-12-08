#@s - undefined
#called arbitrarily

#remove bonsai pot at current block
execute align xyz positioned ~.5 ~.5 ~.5 run kill @e[sort=nearest,limit=1,distance=...5,tag=VADS_SandExtractor]
#set hopper and ensure custom name
execute unless block ~ ~ ~ minecraft:hopper run setblock ~ ~ ~ minecraft:hopper[facing=down]
data merge block ~ ~ ~ {CustomName:"{\"translate\":\"block.vadditions.sand_extractor\"}"}
#summon new bonsai pot
execute align xyz run summon minecraft:armor_stand ~.5 ~-.2 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:15}}],Tags:["VADS_Entity","VADS_FireStand","VADS_NeedsOtherRandom","VADS_SandExtractor"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_SandExtractor\""}
#kill current entity unless it's a player
kill @s[type=!minecraft:player]