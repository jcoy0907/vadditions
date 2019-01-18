#@s - console
#called by #vadditions:modules/mobs/tick

#check for mobs
execute if entity @s[type=!minecraft:player,tag=!VADS_FoundMob] run function vadditions:modules/mobs/spawn/check
