#@s - console
#called by #visual:tick

#freeze
execute as @e[scores={VADS_FreezeTimer=..40}] at @s run function visual:charge_up
execute as @e[scores={VADS_FreezeTimer=41..}] run kill @s[type=!minecraft:player]
