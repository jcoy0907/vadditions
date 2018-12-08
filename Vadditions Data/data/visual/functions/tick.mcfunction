# Freeze
execute at @e[scores={VADS_FreezeTimer=..40}] run particle minecraft:crit ~4 ~1 ~ 0 .5 0 0 5 normal @a
execute at @e[scores={VADS_FreezeTimer=..40}] run particle minecraft:crit ~-4 ~1 ~ 0 .5 0 0 5 normal @a
execute at @e[scores={VADS_FreezeTimer=..40}] run particle minecraft:crit ~ ~1 ~4 0 .5 0 0 5 normal @a
execute at @e[scores={VADS_FreezeTimer=..40}] run particle minecraft:crit ~ ~1 ~-4 0 .5 0 0 5 normal @a

execute at @e[scores={VADS_FreezeTimer=..40}] run effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:slowness 1 100
execute at @e[scores={VADS_FreezeTimer=..40}] run effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:jump_boost 1 128 true
execute at @e[scores={VADS_FreezeTimer=..40}] run effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator] minecraft:wither 2 2

execute as @a[scores={VADS_FreezeTimer=41..}] run scoreboard players reset @s VADS_FreezeTimer

execute as @e[scores={VADS_FreezeTimer=41..}] run kill @s[type=!minecraft:player]