particle minecraft:explosion ~ ~ ~ 1 1 1 .1 10 force
particle minecraft:block minecraft:cactus ~ ~ ~ 2 2 2 .8 500
playsound minecraft:entity.generic.explode player @a ~ ~ ~

effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_UndeadButImmune,distance=..5] minecraft:instant_damage 1 1

effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,tag=!VADS_UndeadButImmune,distance=..5] minecraft:instant_health 1 1