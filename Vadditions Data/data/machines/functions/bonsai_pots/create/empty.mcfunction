#@s - undefined
#called arbitrarily

#remove bonsai pot at current block
execute align xyz positioned ~.5 ~.5 ~.5 run kill @e[sort=nearest,limit=1,distance=...5,tag=VADS_BonsaiPot]
#set hopper and ensure custom name
execute unless block ~ ~ ~ minecraft:hopper run setblock ~ ~ ~ minecraft:hopper[facing=down]
execute if score @s VADS_BPDirtCount matches 3.. run setblock ~ ~ ~ minecraft:hopper[facing=down]
data merge block ~ ~ ~ {CustomName:"{\"translate\":\"block.vadditions.bonsai_pot\"}"}
#summon new bonsai pot
execute align xyz run summon minecraft:armor_stand ~.5 ~.3 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:12}}],Tags:["VADS_Entity","VADS_NeedsOtherRandom","VADS_BonsaiPot","VADS_BonsaiPot.Empty"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_BonsaiPot\""}
#kill current entity unless it's a player
kill @s[type=!minecraft:player]