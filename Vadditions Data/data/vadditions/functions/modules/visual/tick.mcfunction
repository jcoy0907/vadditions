#@s - console
#called by #vadditions:modules/visual/tick

#freeze
execute as @e[scores={VADS_FreezeTimer=..40}] at @s run function vadditions:modules/visual/charge_up
execute as @e[scores={VADS_FreezeTimer=41..}] run kill @s[type=!minecraft:player]
