#@s - lazer removed incorrectly
#called by vadditions:modules/machines/tick

#ensure block is removed
setblock ~ ~ ~ minecraft:air
#remove guardian
teleport @s ~ -512 ~
kill @s[type=!minecraft:player]