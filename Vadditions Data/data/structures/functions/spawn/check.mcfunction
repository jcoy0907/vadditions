title @a actionbar {"translate":"text.vadditions.generating_terrain.structures"}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["VADS_CheckStructure"],CustomName:"{\"text\":\"VADS_CheckStructure\"}",NoGravity:1,Invulnerable:1,Invisible:1,Marker:1b}
execute as @e[tag=VADS_CheckStructure,limit=1] at @s run function structures:main