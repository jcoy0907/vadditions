#@s - @s[scores={VADS_BPDirtCount=3..},tag=VADS_BonsaiPot]
#called by machines:bonsai_pots/tick

#summon item
summon minecraft:item ~ ~1 ~ {Tags:["VADS_BPDirtCount"],Item:{id:"minecraft:dirt",Count:1b}}
#store dirt count in bonsai pot into item
execute positioned ~ ~1 ~ store result entity @s[type=minecraft:item,tag=VADS_BPDirtCount,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s VADS_BPDirtCount
#audiovisuals
particle minecraft:block minecraft:dirt ~ ~1 ~ 0 .25 0 0 30 normal @a
playsound minecraft:block.gravel.break block @a[distance=..10] ~ ~1 ~ 100 .75 1
#empty pot
function machines:bonsai_pots/create/empty
