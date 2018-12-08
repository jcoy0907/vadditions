particle minecraft:explosion ~ ~ ~ 1 1 1 .1 30 normal
particle minecraft:block minecraft:nether_quartz_ore ~ ~ ~ 2 2 2 .8 750
particle minecraft:flame ~ ~ ~ 2 2 2 .8 750
playsound minecraft:entity.generic.explode player @a ~ ~ ~

execute as @s at @s run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_UndeadButImmune,distance=..5] minecraft:instant_damage 1 2

execute as @s at @s run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,tag=!VADS_UndeadButImmune,distance=..5] minecraft:instant_health 1 2

execute as @s at @s run tag @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=VADS_UndeadButImmune,distance=..5] add VADS_ConfusedEffect