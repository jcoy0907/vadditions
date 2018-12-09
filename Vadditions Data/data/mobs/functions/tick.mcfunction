#@s - console
#called by #mobs:tick

#check for mobs
execute as @e[tag=!VADS_FoundMob,type=!minecraft:player] run function mobs:spawn/check