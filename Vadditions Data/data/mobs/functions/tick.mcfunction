#@s - console
#called by #mobs:tick

#check for mobs
execute if entity @s[type=!minecraft:player,tag=!VADS_FoundMob] run function mobs:spawn/check
