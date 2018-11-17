title @a actionbar {"translate":"text.vadditions.generating_terrain.structures"}
summon minecraft:armor_stand ~ ~ ~ {Tags:["VADS_CheckStructure"],CustomName:"{\"text\":\"VADS_CheckStructure\"}",NoGravity:1,Invulnerable:1,Invisible:1,Marker:1b}
execute as @e[tag=VADS_CheckStructure,limit=1,type=minecraft:armor_stand] at @s run function structures:main