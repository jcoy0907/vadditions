#@s - @e[type=#vadditions:eats/potatoes] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"},OnGround:1b},sort=nearest,limit=1,distance=...5]
#called by entities:clock

#audiovisuals
execute positioned ^ ^ ^1 run particle minecraft:item minecraft:potato ~ ~.25 ~ .1 .1 .1 0 20
particle minecraft:heart ~ ~1 ~ .2 .2 .2 0 10 normal @a
playsound minecraft:entity.generic.eat neutral @a[distance=..15] ~ ~ ~ 100 1.2 1
#mechanics
effect give @s minecraft:regeneration 5 0
data merge entity @s[nbt={Age:0}] {InLove:600}
#kill item
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"}},sort=nearest,limit=1,distance=...5]
