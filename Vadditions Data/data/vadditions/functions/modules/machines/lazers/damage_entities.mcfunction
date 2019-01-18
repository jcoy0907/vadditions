particle minecraft:large_smoke ~ ~ ~ .5 .5 .5 0 1 normal
playsound minecraft:entity.ender_dragon.hurt voice @a[distance=..10] ~ ~ ~ 100 2 1
effect give @e[distance=..1,type=!#vadditions:no_weapon_damage] minecraft:instant_damage 1 0 true
execute unless block ~ ~ ~ #minecraft:air run kill @e[type=minecraft:item,distance=..1]