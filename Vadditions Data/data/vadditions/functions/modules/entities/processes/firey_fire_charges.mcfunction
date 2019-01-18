#@s -
#called by vadditions:modules/entities/clock

#audiovisuals
particle minecraft:flame ~1 ~ ~ 1 1 1 .1 999 normal @a
playsound minecraft:item.firecharge.use voice @a[distance=..16] ~ ~ ~ 100 .9 1
#mechanics
execute as @e[distance=..5] run data merge entity @s {Fire:100s}
setblock ~ ~ ~ minecraft:fire keep
execute as @e[type=minecraft:creeper,distance=..5] run data merge entity @s {Fuse:20,ExplosionRadius:3}
kill @s
