#@s - @e[tag=VADS_OreEntity,tag=VADS_OreTransanium] unless block ~ ~ ~ #vadditions:modules/structures/holds_ore unless block ~ ~ ~ minecraft:stone
#called by vadditions:modules/structures/tick

#kill entity
kill @s[type=!minecraft:player]
#replace block
setblock ~ ~ ~ minecraft:stone replace
