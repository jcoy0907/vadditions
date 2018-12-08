#@s - arbitrary
#called arbitrarily

#notify of crash start
tellraw @s {"translate":"text.vadditions.crash.start"}
#attempt crash
execute as @e[type=!minecraft:player] run function vadditions:crash
#notify of error (most likely!)
tellraw @s {"translate":"text.vadditions.crash.error"}