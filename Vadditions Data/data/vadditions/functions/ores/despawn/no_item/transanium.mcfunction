#@s - @e[tag=VADS_OreEntity,tag=VADS_OreTransanium] unless block ~ ~ ~ #structures:holds_ore unless block ~ ~ ~ minecraft:stone
#called by structures:tick

#kill entity
kill @s[type=!minecraft:player]
#replace block
setblock ~ ~ ~ minecraft:stone replace
