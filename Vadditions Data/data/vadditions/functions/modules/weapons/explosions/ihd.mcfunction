particle minecraft:explosion ~ ~ ~ 1 1 1 .1 10 normal
particle minecraft:block minecraft:black_concrete ~ ~ ~ 2 2 2 .8 500
playsound minecraft:entity.generic.explode player @a ~ ~ ~

effect give @e[type=!minecraft:player,type=!#vadditions:no_weapon_damage,tag=!VADS_Undead,tag=!VADS_UndeadButImmune,distance=..5] minecraft:wither 5 1
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator] minecraft:wither 3 1
