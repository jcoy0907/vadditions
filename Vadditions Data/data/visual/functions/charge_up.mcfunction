#@s - @e[scores={VADS_FreezeTimer=..40}]
#called by visual:tick

#audiovisuals
particle minecraft:crit ~4 ~1 ~ 0 .5 0 0 5 normal @a
particle minecraft:crit ~-4 ~1 ~ 0 .5 0 0 5 normal @a
particle minecraft:crit ~ ~1 ~4 0 .5 0 0 5 normal @a
particle minecraft:crit ~ ~1 ~-4 0 .5 0 0 5 normal @a
particle minecraft:campfire_signal_smoke ~ ~2 ~ 0 0 0 .1 1 force @a

playsound minecraft:block.campfire.crackle voice @a[distance=..20] ~ ~ ~ 100 2 1
