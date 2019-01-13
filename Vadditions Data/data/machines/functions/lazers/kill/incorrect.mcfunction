#@s - lazer removed incorrectly
#called by machines:tick

#ensure block is removed
setblock ~ ~ ~ minecraft:air
#remove guardian
teleport @s ~ -512 ~
kill @s[type=!minecraft:player]