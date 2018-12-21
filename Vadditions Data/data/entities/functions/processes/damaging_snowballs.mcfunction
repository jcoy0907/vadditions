#@s - @e[type=minecraft:snowball,tag=!VADS_DamagedSnowball]
#called by entities:tick

#effect entities
effect give @e[type=!minecraft:player,sort=nearest,limit=1,distance=..1.5,tag=!VADS_Undead,tag=!VADS_IsSprite] minecraft:instant_damage 1 0
effect give @e[type=!minecraft:player,sort=nearest,limit=1,distance=..1.5,tag=VADS_Undead,tag=!VADS_IsSprite] minecraft:instant_health 1 0
#if affected, don't affect again
execute if entity @e[type=!minecraft:player,sort=nearest,limit=1,distance=..1.5,tag=!VADS_IsSprite] run tag @s add VADS_DamagingSnowball
