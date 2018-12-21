#@s - @e[scores={VADS_FreezeTimer=..40}]
#called by visual:tick

particle minecraft:crit ~4 ~1 ~ 0 .5 0 0 5 normal @a
particle minecraft:crit ~-4 ~1 ~ 0 .5 0 0 5 normal @a
particle minecraft:crit ~ ~1 ~4 0 .5 0 0 5 normal @a
particle minecraft:crit ~ ~1 ~-4 0 .5 0 0 5 normal @a

effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:slowness 1 100
effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:jump_boost 1 128 true
effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:wither 2 2
